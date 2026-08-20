package antlr;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class ByteBuffer extends InputBuffer {
    transient InputStream input;

    public ByteBuffer(InputStream inputStream) {
        this.input = inputStream;
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
