package zhaoxin.exception;

/**
 * Created by mamama72 on 2019/6/10.
 */
public class newcomerExistException extends Exception{
    public newcomerExistException() {
        super();
    }

    public newcomerExistException(String message) {
        super(message);
    }

    public newcomerExistException(String message, Throwable cause) {
        super(message, cause);
    }

    public newcomerExistException(Throwable cause) {
        super(cause);
    }
}
