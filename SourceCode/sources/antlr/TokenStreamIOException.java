package antlr;

import java.io.IOException;
/* loaded from: classes.dex */
public class TokenStreamIOException extends TokenStreamException {

    /* renamed from: io  reason: collision with root package name */
    public IOException f11io;

    public TokenStreamIOException(IOException iOException) {
        super(iOException.getMessage());
        this.f11io = iOException;
    }
}
