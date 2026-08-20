package antlr;

import java.io.IOException;
/* loaded from: classes.dex */
public class CharStreamIOException extends CharStreamException {

    /* renamed from: io  reason: collision with root package name */
    public IOException f10io;

    public CharStreamIOException(IOException iOException) {
        super(iOException.getMessage());
        this.f10io = iOException;
    }
}
