
var exec = require('cordova/exec');

function TestModel() {};
TestModel.prototype.testPlugin = function (success, fail, option) {
    exec(success, fail, 'testPlugin', 'testWithTitle', [option]);
};

TestModel.prototype.addNumber = function (success, fail, a, b) {
    exec(success, fail, 'testPlugin', 'add', [a, b]);
};

TestModel.prototype.minusNumber = function (success, fail, option) {
    exec(success, fail, 'testPlugin', 'minus', [option]);
};

TestModel.prototype.productNumber = function (success, fail, a, b) {
    exec(success, fail, 'testPlugin', 'product', [a, b]);
};

TestModel.prototype.divideNumber = function (success, fail, a, b) {
    exec(success, fail, 'testPlugin', 'divide', [a, b]);
};

var testModel = new TestModel();
module.exports = testModel;
    