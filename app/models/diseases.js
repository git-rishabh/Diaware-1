/* jshint indent: 2 */
//didnt use yet
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('diseases', {
    diseaseName: {
      type: DataTypes.STRING,
      allowNull: false,
      primaryKey: true
    }
  }, {
    tableName: 'diseases'
  });
};
