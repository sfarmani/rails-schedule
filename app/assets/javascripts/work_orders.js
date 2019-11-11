$(document).ready(function(){
    $('.work_order_duration').each(function(){
        let thisclass = $(this).attr('class');
        let height = thisclass.split(' ')[1].split('_')[1];
        let margin_top = thisclass.split(' ')[2].split('_')[1];
        $(this).css('height', height);
        $(this).css('margin-top', parseInt(margin_top));

    });

    $('.clickable').on('click', function(){
        let row = $(this).attr('data-row');
        let currHour = new Date($(this).attr('data-hour'));
        let ele = $(`div input[data-row='${row}']`);

        let first_end = new Date(ele.eq(0).attr('data-endtime'));

        let second_start= new Date(ele.eq(1).attr('data-starttime'));
        let second_end = new Date(ele.eq(1).attr('data-endtime'));

        let third_start = new Date(ele.eq(2).attr('data-starttime'));

        if(currHour > first_end && currHour < second_start){
            let minutes = (second_start - first_end) / 1000 / 60;
            alert(`${convert(minutes)} available`);
        }
        else if(currHour > second_end && currHour < third_start){
            let minutes = (third_start - second_end) / 1000 / 60;
            alert(`${convert(minutes)} available`);
        }

    });

});

function convert(n){
    return `0${n / 60 ^ 0}`.slice(-2) + 'H ' + ('0' + n % 60).slice(-2) + 'M';
}