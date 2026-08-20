package jdbm.helper;

import java.io.IOException;
/* loaded from: classes5.dex */
public abstract class TupleBrowser {
    public abstract boolean getNext(Tuple tuple) throws IOException;

    public abstract boolean getPrevious(Tuple tuple) throws IOException;
}
