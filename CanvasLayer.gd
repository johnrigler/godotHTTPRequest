extends CanvasLayer

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_Button_pressed():  
	$HTTPRequest.request("https://httpbin.org/get?insertArbitraryDataHere")

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.result)
# Example from HTTPRequest Help
# Outputs to Message Log
