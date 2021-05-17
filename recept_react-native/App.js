import React from 'react';
import { StyleSheet, Text, View } from 'react-native';

import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";

import Home from './src/screens/Home';
import Recept from './src/screens/Recept';
import Soup from './src/screens/Soup';
import Main from './src/screens/Main';
import Dessert from './src/screens/Dessert';

const Stack = createStackNavigator();

export default function App() {
  return(
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen 
          name="Home" 
          component={Home} 
        />
        <Stack.Screen
          options={{headerLargeTitle: true}}
          name="Recept" 
          component={Recept} 
        />
        <Stack.Screen
          options={{headerLargeTitle: true}}
          name="Soup" 
          component={Soup} 
        />
        <Stack.Screen
          options={{headerLargeTitle: true}}
          name="Main" 
          component={Main} 
        />
        <Stack.Screen
          options={{headerLargeTitle: true}}
          name="Dessert" 
          component={Dessert} 
        />
      </Stack.Navigator>
    </NavigationContainer>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
}); 
