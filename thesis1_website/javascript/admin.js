function adminOrderList(refNumber, FullName) {
    $.ajax({
        url: '../adminAccount/orderSummary.php?refNumber=' + refNumber + '&custName=' + FullName,
        method: 'GET',
        dataType: 'html',
        success: function (response) {
            // Update the content of the admin-client-order div
            $('.admin-client-order').html(response);
        },
        error: function (error) {
            console.log(error);
        }
    });
}



function btnApprovedOrder(refNumber) {
    $.ajax({
        type: "POST",
        url: '../adminAccount/approvedOrder.php',
        data: {
            refNumber: refNumber
        },
        success: function(response) {
            alert(response);
        },
        error: function(xhr, textStatus, errorThrown) {
            console.error("Error: " + errorThrown);
        }
    });
}
