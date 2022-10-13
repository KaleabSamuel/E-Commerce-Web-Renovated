const AdminWide = ({ person }) => {
  return (
    <div className="container user-wide">
      <h2>User ID: {person.adminId}</h2>
      <table style={{width:'100%'}}>
        <tr>
          <td style={{width:'60%'}}>
            <h3>First Name: {person.fname}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>Last Name: {person.lname}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>Email: {person.email}</h3>
          </td>
        </tr>
        <tr>
          <td>
            <h3>PhoneNo: {person.phone}</h3>
          </td>
        </tr>
      </table>
    </div>
  );
};

export default AdminWide;
