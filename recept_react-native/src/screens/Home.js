//import liraries
import React, { Component } from 'react';
import { View, Text, StyleSheet, Button, TouchableOpacity, Image } from 'react-native';
import FlatButton from '../component/FlatButton';

// create a component
export default class Home extends Component {
    render(){
        return(
        <View style={styles.container}>
            <Image
                style={styles.logo}
                source={require('../img/logo.png')}
            />
            <FlatButton text='Recepty' onPress={()=> this.props.navigation.navigate('Recept')}/>
        </View>
    )
    }
}

// define your styles
const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#e5e5e5',
    },
    logo: {
        width: 240,
        height: 180,
    }
});
