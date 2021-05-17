import React from 'react';
import { View, Text, StyleSheet, Button, TouchableOpacity } from 'react-native';

// create a component
export default function FlatButton({ text, onPress }) {
        return (
            <TouchableOpacity onPress={onPress}>
                <View style={styles.button}>
                    <Text style={styles.buttonText}>{ text }</Text>
                </View>
            </TouchableOpacity>
    )
    }


// define your styles
const styles = StyleSheet.create({
    button: {
        borderRadius: 8,
        paddingHorizontal: 100,
        paddingVertical:14,
        backgroundColor:'#e5e5e5',
    },
    buttonText: {
        color: '#fca311',
        fontWeight: 'bold',
        textTransform: 'uppercase',
        fontSize: 32,
    }
});
