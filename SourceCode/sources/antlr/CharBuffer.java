package antlr;

import java.io.IOException;
import java.io.Reader;
/* loaded from: classes.dex */
public class CharBuffer extends InputBuffer {
    transient Reader input;

    public CharBuffer(Reader reader) {
        this.input = reader;
    }

    @Override // antlr.InputBuffer
    public void fill(int i) throws CharStreamException {
        try {
            syncConsume();
            while (this.queue.nbrEntries < this.markerOffset + i) {
                this.queue.append((char) this.input.read());
            }
        } catch (IOException e2) {
            throw new CharStreamIOException(e2);
        }
    }
}
