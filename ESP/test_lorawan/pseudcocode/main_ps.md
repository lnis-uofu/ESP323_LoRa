#Overview
This document provides the pseudocode and logical flow of the main function to use LoRaWAN to connect to the Helium Network.

## Main Function
```c
main(){

esp_init(); initalize the ESP and all its peripherals

radio_init(); setup the radio prior to use

join_procedure(); connect to the LoRaWAN network   

if join successful:
	transmit_data();

}
```


## Helper Functions

###esp_init
setup the ESP32 and its periprherals.

```
esp_init(){
setup_timer
setup_gpio
setup_spi

TODO: FINISH THIS
}
```

###radio_init
setup the sx1276 radio

```
radio_init(){

TODO: FILL THIS IN

}
```

###join_procedure
Steps to join a LoRaWAN network. reqeuest access to the server and wait for the server to accept the request and respond. Follow join procedure for v.1.0.x [here](https://www.thethingsnetwork.org/docs/lorawan/end-device-activation/). Helium [supports](https://docs.helium.com/use-the-network/devices/) v1.0.2, v1.0.3, and v1.0.4. 

```
join_procedure(){
	join_request(); send request to server
	
	while((server not respond) && (not timeout){
		wait_for_server_to_accept_and_respond
	}
	
	return_successful_join
}


```

###transmit_data
A single data uplink to the server. Transmit uplink, wait for predetermined time, open a window for predetermined time for server downlink, wait for predetermined time, open a window for predetermined time for server downlink. Follow the control flow described [here](https://ubidots.com/blog/explaining-lorawan/).

```
transmit_data(){
	transmit_uplink();
	receive_delay1();
	open_receive_window1();
	close_receive_window1();
	receive_delay2();
	open_receive_window2();
	close_receive_window2();
	
}

```



