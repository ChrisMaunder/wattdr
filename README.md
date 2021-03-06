# wattdr

WattDr is a free utility for comparing bike power meters. It can connect to multiple power meters with bluetooth. Any power meter that follows the official specification should work. It has been tested ith Stages left-sided power meter, PowerTap P1S single sided pedal and Cycleops Magnus smart trainer.

The code for reading power meter will be open sourced so that others can use it and improve it.

<b>Data Export</b>

WattDr extends Garmin's TCX format with additional attributes to track multiple power meters and precise timestamps. Currently, the export supports JSON format. Other formats might be added in the future if enough people find it desirable. You should be able to load the JSON data with generic JSON parsers in Java, C# and Swift.

If you find a bug, please file a new issue. Thank you.

## Bluetooth Specification Links

[Bluetooth services] (https://www.bluetooth.com/specifications/gatt/services)

[Cycling Power] (https://www.bluetooth.com/specifications/gatt/viewer?attributeXmlFile=org.bluetooth.service.cycling_power.xml)

[Power Measurement] (https://www.bluetooth.com/specifications/gatt/viewer?attributeXmlFile=org.bluetooth.characteristic.cycling_power_measurement.xml)

## Future Features

Here's the list of features I like to add in the future. No dates on when they will be ready.

- graph of the power
- graph of the delta between power meters

## Known Issues

Sometimes Wahoo speed sensors sends odd values, which produces inaccurate speed readings. The peripheral manager tries to handle this by filtering out readings that are higher than 40 meters/second. 40 meters/second translates to 90mph. For most cases, 90mph is crazy fast. The primary focus of the app is power meters, so speed isn't super critical.

## FIT Support

At this time, there isn't a good solution for Garmin FIT format. The official libraries provided by ANT group is C/C++, C# and Java. Although I could port the Java version over to Swift, that's not practical. The data format changes frequently and it's a binary format. That means there isn't a public schema for FIT, whereas TCX has a formal schema. ANT does provide a PDF of the data format, but it is complex. If ANT provides Swift library in the future, WattDr will consider adding support.

## Observations

Depending on the type of power meter, you will get different power readings. In general, pedal based power meters "may" register higher watt values than crank arm meters. Hub meters and smart trainers that do not use direct drive will have lower watt readings. To dive deeper into the complex topic of power meters, I recommend reading DC Rainmaker https://www.dcrainmaker.com/

<img src="./images/comparison_1.png">
<p>
<img src="./images/comparison_2.png">
<p>
