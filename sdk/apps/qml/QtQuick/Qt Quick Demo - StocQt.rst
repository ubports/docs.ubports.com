.. _sdk_qtquick_qt_quick_demo_-_stocqt:

QtQuick Qt Quick Demo - StocQt
==============================



The *StocQt* application presents a trend chart for the first stock in the list of NASDAQ-100 stocks maintained by it. It allows the user to choose another stock from the list, and fetches the required data for the selected stock by sending an ``XMLHttpRequest`` to http://finance.yahoo.com.

The application uses several custom types such as Button, CheckBox, StockChart, StockInfo, StockView, and so on. These types are used to present the stock data in a readable form and also let the user customize the trend chart. For example, the user can choose to view the yearly, monthly, or daily trends in the stock price.

The application uses the `ObjectModel </sdk/apps/qml/QtQuick/views/#objectmodel>`_  type to access the two visual data models that it depends on.

.. code:: qml

        ListView {
            id: root
            ...
            model: ObjectModel {
                StockListView {
                    id: listView
                    width: root.width
                    height: root.height
                }
                StockView {
                    id: stockView
                    width: root.width
                    height: root.height
                    stocklist: listView
                    stock: stock
                }
            }
        }

The StockListView model is a static data model listing the NASDAQ-100 stocks with basic information such as stockId, name, value, change, and so on. This data model is used by the application if the user wants to choose another stock from the list.

StockView is a complex data model that presents a trend chart for the selected stock. It uses another custom type, StockChart, which presents the graphical trend of the stock price using a Canvas. This data model is used for most of the time during the lifetime of the application.

.. code:: qml

    Rectangle {
        id: chart
        width: 320
        height: 200
        ...
        Canvas {
            id: canvas
            ...
            onPaint: {
                if (!stockModel.ready) {
                    return;
                }
                numPoints = stockModel.indexOf(chart.startDate);
                if (chart.gridSize == 0)
                    chart.gridSize = numPoints
                var ctx = canvas.getContext("2d");
                ctx.globalCompositeOperation = "source-over";
                ctx.lineWidth = 1;
                drawBackground(ctx);
                var highestPrice = 0;
                var highestVolume = 0;
                var lowestPrice = -1;
                var points = [];
                for (var i = numPoints, j = 0; i >= 0 ; i -= pixelSkip, j += pixelSkip) {
                    var price = stockModel.get(i);
                    if (parseFloat(highestPrice) < parseFloat(price.high))
                        highestPrice = price.high;
                    if (parseInt(highestVolume, 10) < parseInt(price.volume, 10))
                        highestVolume = price.volume;
                    if (lowestPrice < 0 || parseFloat(lowestPrice) > parseFloat(price.low))
                        lowestPrice = price.low;
                    points.push({
                                    x: j * xGridStep,
                                    open: price.open,
                                    close: price.close,
                                    high: price.high,
                                    low: price.low,
                                    volume: price.volume
                                });
                }
                if (settings.drawHighPrice)
                    drawPrice(ctx, 0, numPoints, settings.highColor, "high", points, highestPrice, lowestPrice);
                if (settings.drawLowPrice)
                    drawPrice(ctx, 0, numPoints, settings.lowColor, "low", points, highestPrice, lowestPrice);
                if (settings.drawOpenPrice)
                    drawPrice(ctx, 0, numPoints,settings.openColor, "open", points, highestPrice, lowestPrice);
                if (settings.drawClosePrice)
                    drawPrice(ctx, 0, numPoints, settings.closeColor, "close", points, highestPrice, lowestPrice);
                drawVolume(ctx, 0, numPoints, settings.volumeColor, "volume", points, highestVolume);
                drawScales(ctx, highestPrice, lowestPrice, highestVolume);
            }
        }
    }

To understand the application better, browse through its code using Qt Creator.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

Files:

-  demos/stocqt/stocqt.qml
-  demos/stocqt/content/Button.qml
-  demos/stocqt/content/CheckBox.qml
-  demos/stocqt/content/StockChart.qml
-  demos/stocqt/content/StockInfo.qml
-  demos/stocqt/content/StockListModel.qml
-  demos/stocqt/content/StockListView.qml
-  demos/stocqt/content/StockModel.qml
-  demos/stocqt/content/StockSettingsPanel.qml
-  demos/stocqt/content/StockView.qml
-  demos/stocqt/main.cpp
-  demos/stocqt/stocqt.pro
-  demos/stocqt/stocqt.qmlproject
-  demos/stocqt/stocqt.qrc

**See also** QML Applications.

