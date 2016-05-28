Vis_Network.draw= function(){
			var nodes = new vis.DataSet([
                {id: 1, label: '成本'},
                {id: 2, label: '時程'},
                {id: 3, label: '成員人數'},
                {id: 4, label: '預算'},
                {id: 5, label: '溝通'}
            ]);

            // create an array with edges
            var d= (Math.floor(Math.random() * 100) + 1 )+"%"
            var dd=  (Math.floor(Math.random() * 100) + 1 )+"%"
            var ddd= (Math.floor(Math.random() * 100) + 1 )+"%"
            var dddd= (Math.floor(Math.random() * 100) + 1 )+"%"
            var tt=[
                {id: '1', from: 1, to: 3,label: d},
                {id: '2', from: 1, to: 2,label: dd},
                {id: '3', from: 2, to: 4,label: ddd},
                {id: '4', from: 2, to: 5,label: dddd}
            ];
            var edges = new vis.DataSet(tt);

            // create a network
            var container = document.getElementById('mynetwork');

            // provide the data in the vis format
            var data = {
                nodes: nodes,
                edges: edges
            };
            var options = {
               physics:{
                   stabilization: {
                    enabled: true,
                    onlyDynamicEdges: false
                   }
                 },
                edges:{
                    arrows: 'to',
                    color: gon.variable_name,
                    font: '12px arial gon.variable_name',
                    scaling:{
                      label: true,
                    },
                    shadow: true,
                    smooth: false
                  }
            };
            // initialize your network!
            var network = new vis.Network(container, data, options);
            
}