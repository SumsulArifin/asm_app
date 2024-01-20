enum Status {
  OK, // 200
  NOT_FOUND, // 404
  NOT_IMPLEMENTED, LOADING, COMPLETED, ERROR, // 501
}

void main() {Status status = Status.OK;

  switch (status) {
    case Status.OK:
      print('Request successful - Status Code: 200');
      break;
    case Status.NOT_FOUND:
      print('Resource not found - Status Code: 404');
      break;
    case Status.NOT_IMPLEMENTED:
      print('Not implemented - Status Code: 501');
      break;
    default:
      print('Unknown status code');
  }
}
