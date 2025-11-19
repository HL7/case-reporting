Instance: device-ecr-software-ymca
InstanceOf: Device
Title: "Device - YMCA EHR Software"
Description: "Example of a Device representing the electronic health record (EHR) software system used by the YMCA Center for electronic case reporting."
Usage: #example
* identifier.system = "http://example.org/software/client-ids"
* identifier.value = "goodhealth_id"
* manufacturer = "Acme Devices, Inc"
* type.text = "EHR"
* version.value = "10.23-23423"
* contact.system = #url
* contact.value = "http://example.org"
* url = "http://example.org/ymca/software/"