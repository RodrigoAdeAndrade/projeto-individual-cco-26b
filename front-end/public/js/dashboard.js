const ctx = document.getElementById('grafico_linha');
const ctx2 = document.getElementById('grafico_barra');

new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['11/nov', '12/nov', '13/nov', '14/nov', '15/nov', '16/nov', '17/nov'],
        datasets: [{
            label: 'Quantidade',
            data: [10, 1, 3, 5, 2, 3, 6],
            backgroundColor: '#d64a04',
            borderColor: '#d64a04',
            borderWidth: 2
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

new Chart(ctx2, {
    type: 'bar',
    data: {
        labels: ['06h - 10h', '06h - 10h', '06h - 18h', '18h - 22h', '22h - 02h', '02h - 06h'],
        datasets: [{
            label: '# of Votes',
            data: [10, 8, 12, 6, 8, 3],
            backgroundColor: '#d64a04',
            borderWidth: 1,
            barThickness: 35
        }]
    },
    options: {
        indexAxis: 'y',
        responsive: true,
        scales: {
            x: {
                stacked: true
            },
            y: {
                stacked: true
            }
        },
        maintainAspectRatio: false
        
    }
});