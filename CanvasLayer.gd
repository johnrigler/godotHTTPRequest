extends CanvasLayer

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_Button_pressed():  
	$HTTPRequest.request("https://api.polygonscan.com/api?module=account&action=txlist&address=0xF7e9857AFD27Ba03493BdC57F2588E71C976739f&sort=desc")

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.result.result[0])
# Example from HTTPRequest Help
# Pulls back a big complex chunk of JSON
# Outputs to Message Log
