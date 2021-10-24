require "test_helper"

class UserTest < ActiveSupport::TestCase

  # Verifica que un usuario con datos correctos es válido:
  test 'user with a valid email should be valid' do
    user = User.new(email: 'test@test.org', password_digest: 'test')
    assert user.valid?
  end


  # Verifica que un usuario con un email erróneo no es válido
  test 'user with invalid email should be invalid' do
    user = User.new(email: 'test', password_digest: 'test')
    assert_not user.valid?
  end

  # Verifica que un nuevo usuario con email no es válido. Así que usamos el mismo email que creamos en el fixture.
  test 'user with taken email should be invalid' do
    other_user = users(:one)
    user = User.new(email: other_user.email, password_digest:'test')
    assert_not user.valid?
  end

  test 'destroy user should destroy linked product' do
    assert_difference('Product.count', -1) do
      users(:one).destroy
    end
  end

end
