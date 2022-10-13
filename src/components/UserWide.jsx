const UserWide = ({ person }) => {
  return (
    <div className="container user-wide">
      <h2>User ID: {person.UserID}</h2>
      <table style={{width:'100%'}}>
        <tr>
          <td style={{width:'60%'}}>
            <h3>First Name: {person.UserFname}</h3>
          </td>
          <td>
            <h3>City: {person.UserCity}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>Last Name: {person.UserLname}</h3>
          </td>
          <td>
            <h3>State: {person.UserState}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>Email: {person.UserEmail}</h3>
          </td>
          <td>
            <h3>Country: {person.UserCountry}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>PhoneNo: {person.UserPhoneNo}</h3>
          </td>
        </tr>
      </table>
    </div>
  );
};

export default UserWide;
