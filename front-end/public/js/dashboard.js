const ctx = document.getElementById('grafico_linha');

new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['11/nov', '12/nov', '13/nov', '14/nov', '15/nov', '16/nov', '17/nov'],
        datasets: [{
            label: '# of Votes',
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

const ctx2 = document.getElementById('grafico_barra');

new Chart(ctx2, {
    type: 'bar',
    data: {
        labels: ['06h10h', '06h10h', '06h18h', '18h22h', '22h02h', '02h06h'],
        datasets: [{
            label: '# of Votes',
            data: [10, 8, 12, 6, 8, 3],
            backgroundColor: '#d64a04',
            borderWidth: 1
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