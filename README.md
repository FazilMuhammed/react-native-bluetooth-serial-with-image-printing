## React Native Bluetooth Serial With Image Printing

This is a port of `react-native-bluetooth-serial` repo, supporting image printing, specificlly ios. (There are lots of solutions for Android out there)

## Usage

```
BluetoothSerial.writeImage(base64_encoded_string_of_image)
    .then(() => { console.log('do something') })
    .catch(err => console.log(err));
```

