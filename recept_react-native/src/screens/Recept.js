//import liraries
import React, { Component } from 'react';
import { View, Text, StyleSheet, Button, Image } from 'react-native';
import ReceptButton from '../component/ReceptButton';

// create a component
export default class Home extends Component {
    render(){
        return(
        <View style={styles.container}>
            <View style={styles.first}>
                <Image
                    style={styles.logo}
                    source={require('../img/pizza.png')}
                />
                <ReceptButton text="Hlavné jedlá" onPress={()=> this.props.navigation.navigate('Main')}/>
            </View>
            <View style={styles.second}>
                <Image
                    style={styles.logo}
                    source={require('../img/soup.png')}
                />
                <ReceptButton text="Polievky" onPress={()=> this.props.navigation.navigate('Soup')}/>
            </View>
            <View style={styles.third}>
                <Image
                    style={styles.logo}
                    source={require('../img/dessert.png')}
                />
            <ReceptButton text="Dezerty" onPress={()=> this.props.navigation.navigate('Dessert')}/>
            </View>
        </View>
    )
    }
}

// define your styles
const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#2c3e50',
    },
    first: {
        flex:1,
        backgroundColor:"#e5e5e5",
        alignItems: 'center',
        justifyContent: 'center',
    },
    second: {
        flex:1,
        backgroundColor:"#fca311",
        alignItems: 'center',
        justifyContent: 'center',
    },
    third: {
        flex:1,
        backgroundColor:"#14213d",
        alignItems: 'center',
        justifyContent: 'center',
    },
    button: {
        color:'#000000'
    },
    logo: {
        width: 120,
        height: 80,
    }
});