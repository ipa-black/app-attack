package com.squareup.tape;

import com.squareup.tape.ObjectQueue;
import com.squareup.tape.QueueFile;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3.dex */
public class FileObjectQueue<T> implements ObjectQueue<T> {
    private final DirectByteArrayOutputStream bytes = new DirectByteArrayOutputStream();
    private final Converter<T> converter;
    private final File file;
    private ObjectQueue.Listener<T> listener;
    private final QueueFile queueFile;

    /* loaded from: classes3.dex */
    public interface Converter<T> {
        T from(byte[] bArr) throws IOException;

        void toStream(T t, OutputStream outputStream) throws IOException;
    }

    public FileObjectQueue(File file, Converter<T> converter) throws IOException {
        this.file = file;
        this.converter = converter;
        this.queueFile = new QueueFile(file);
    }

    @Override // com.squareup.tape.ObjectQueue
    public int size() {
        return this.queueFile.size();
    }

    @Override // com.squareup.tape.ObjectQueue
    public final void add(T t) {
        try {
            this.bytes.reset();
            this.converter.toStream(t, this.bytes);
            this.queueFile.add(this.bytes.getArray(), 0, this.bytes.size());
            ObjectQueue.Listener<T> listener = this.listener;
            if (listener != null) {
                listener.onAdd(this, t);
            }
        } catch (IOException e2) {
            throw new FileException("Failed to add entry.", e2, this.file);
        }
    }

    @Override // com.squareup.tape.ObjectQueue
    public T peek() {
        try {
            byte[] peek = this.queueFile.peek();
            if (peek == null) {
                return null;
            }
            return this.converter.from(peek);
        } catch (IOException e2) {
            throw new FileException("Failed to peek.", e2, this.file);
        }
    }

    @Override // com.squareup.tape.ObjectQueue
    public final void remove() {
        try {
            this.queueFile.remove();
            ObjectQueue.Listener<T> listener = this.listener;
            if (listener != null) {
                listener.onRemove(this);
            }
        } catch (IOException e2) {
            throw new FileException("Failed to remove.", e2, this.file);
        }
    }

    public final void close() {
        try {
            this.queueFile.close();
        } catch (IOException e2) {
            throw new FileException("Failed to close.", e2, this.file);
        }
    }

    @Override // com.squareup.tape.ObjectQueue
    public void setListener(final ObjectQueue.Listener<T> listener) {
        if (listener != null) {
            try {
                this.queueFile.forEach(new QueueFile.ElementReader() { // from class: com.squareup.tape.FileObjectQueue.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.squareup.tape.QueueFile.ElementReader
                    public void read(InputStream inputStream, int i) throws IOException {
                        byte[] bArr = new byte[i];
                        inputStream.read(bArr, 0, i);
                        ObjectQueue.Listener listener2 = listener;
                        FileObjectQueue fileObjectQueue = FileObjectQueue.this;
                        listener2.onAdd(fileObjectQueue, fileObjectQueue.converter.from(bArr));
                    }
                });
            } catch (IOException e2) {
                throw new FileException("Unable to iterate over QueueFile contents.", e2, this.file);
            }
        }
        this.listener = listener;
    }

    /* loaded from: classes3.dex */
    private static class DirectByteArrayOutputStream extends ByteArrayOutputStream {
        public byte[] getArray() {
            return this.buf;
        }
    }
}
