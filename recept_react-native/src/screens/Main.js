import React, { Component } from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const baseUrl = "http://192.168.100.8:8000/";

export default class Main extends Component {

  constructor(props)
  {
    super(props);
    this.state = {
      recepts:[]
    }
  }

  componentDidMount() {
    return fetch(baseUrl+"api/mains")
    .then((response)=> response.json())
    .then((responseJson)=>{
      this.setState({
        recepts:responseJson
      })
    })
    .catch((e)=>{
      alert(JSON.stringify(e))
    })
  }
  render(){
    return(
      <View style={{flex:1}}>
        <FlatList
            data={this.state.recepts}
            keyExtractor={this.keyExtractor}
            renderItem={this._renderItem}
        />
      </View>
    )
  }

  _renderItem = ({item}) =>(
    <View style={[styles.container]}>
        <View style={[styles.name]}>
          <Text style={[styles.main]}>Názov</Text>
          <Text style={[styles.innerMain]}>{item.name}</Text>
        </View>
        <View
              style={{
              borderBottomColor: '#fca311',
              borderBottomWidth: 0.4,
              marginBottom:8,
              marginTop:8
              }}
        />
        <View style={[styles.ing]}>
        <Text style={[styles.main]}>Ingrediencie</Text>
          <Text >{item.ingredients}</Text>
        </View>
        <View
              style={{
              borderBottomColor: '#fca311',
              borderBottomWidth: 0.4,
              marginBottom:8,
              marginTop:18
              }}
        />

        <View style={[styles.rec]}>
        <Text style={[styles.main]}>Postup</Text>
        <Text style={[styles.postup]}>{item.recipe}</Text>
        </View>
        <View
              style={{
              borderBottomColor: 'black',
              borderBottomWidth: 2,
              marginTop:33
              }}
        />
    </View>
)
}

const styles = StyleSheet.create({
  container: {
      flex:1
  },
  name: {
    flex:1,
    alignItems: 'center',
    justifyContent: 'center',
    margin:5,
  },
  ing: {
    flex:1,
    alignItems: 'center',
    justifyContent: 'center',
    marginLeft:35,
    marginRight:35,
  },
  rec: {
    borderColor:"#fca311",
    flex:1,
    alignItems: 'center',
    justifyContent: 'center',
    marginLeft:15,
    marginRight:15,
  },
  main: {
    fontSize:24,
    color:'#fca311',
  },
  innerMain: {
    fontSize:22,
  },
  postup: {
    fontSize:18,
  }
}); 