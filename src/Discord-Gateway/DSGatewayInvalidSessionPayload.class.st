"
I represent Discord Gateway Invalid Session Payload Message used for communication between a client and a server.

I am received by a client when a session id is incorrect and thus it is not possible to receive all missing events since the last connection. The client thus has to connect using Identity (Identify) payload.

See documentation at https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads

"
Class {
	#name : 'DSGatewayInvalidSessionPayload',
	#superclass : 'DSGatewayPayload',
	#category : 'Discord-Gateway-Model',
	#package : 'Discord-Gateway',
	#tag : 'Model'
}

{ #category : 'examples' }
DSGatewayInvalidSessionPayload class >> basic [
	
	^ DSGatewayModelJsonMapping 
		readPayload: DSGatewayModelJsonMapping jsonInvalidSessionPayload.
]

{ #category : 'accessing' }
DSGatewayInvalidSessionPayload class >> code [
	^ 9
]

{ #category : 'visiting' }
DSGatewayInvalidSessionPayload >> accept: aVisitor [
	^ aVisitor visitDSGatewayInvalidSessionPayload: self
]
