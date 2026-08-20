package antlr;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
/* loaded from: classes.dex */
public class PreservingFileWriter extends FileWriter {
    protected File target_file;
    protected File tmp_file;

    public PreservingFileWriter(String str) throws IOException {
        super(new StringBuffer().append(str).append(".antlr.tmp").toString());
        File file = new File(str);
        this.target_file = file;
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            if (!parentFile.exists()) {
                throw new IOException(new StringBuffer("destination directory of '").append(str).append("' doesn't exist").toString());
            }
            if (!parentFile.canWrite()) {
                throw new IOException(new StringBuffer("destination directory of '").append(str).append("' isn't writeable").toString());
            }
        }
        if (this.target_file.exists() && !this.target_file.canWrite()) {
            throw new IOException(new StringBuffer("cannot write to '").append(str).append("'").toString());
        }
        this.tmp_file = new File(new StringBuffer().append(str).append(".antlr.tmp").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.io.OutputStreamWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws java.io.IOException {
        /*
            r13 = this;
            r0 = 0
            super.close()     // Catch: java.lang.Throwable -> Lae
            r1 = 1024(0x400, float:1.435E-42)
            char[] r2 = new char[r1]     // Catch: java.lang.Throwable -> Lae
            java.io.File r3 = r13.target_file     // Catch: java.lang.Throwable -> Lae
            long r3 = r3.length()     // Catch: java.lang.Throwable -> Lae
            java.io.File r5 = r13.tmp_file     // Catch: java.lang.Throwable -> Lae
            long r5 = r5.length()     // Catch: java.lang.Throwable -> Lae
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            r4 = -1
            r5 = 0
            if (r3 != 0) goto L6f
            char[] r3 = new char[r1]     // Catch: java.lang.Throwable -> Lae
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lae
            java.io.FileReader r7 = new java.io.FileReader     // Catch: java.lang.Throwable -> Lae
            java.io.File r8 = r13.tmp_file     // Catch: java.lang.Throwable -> Lae
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lae
            r6.<init>(r7)     // Catch: java.lang.Throwable -> Lae
            java.io.BufferedReader r7 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lab
            java.io.FileReader r8 = new java.io.FileReader     // Catch: java.lang.Throwable -> Lab
            java.io.File r9 = r13.target_file     // Catch: java.lang.Throwable -> Lab
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lab
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lab
            r8 = 1
        L35:
            if (r8 != 0) goto L38
            goto L46
        L38:
            int r9 = r6.read(r2, r5, r1)     // Catch: java.lang.Throwable -> Lab
            int r10 = r7.read(r3, r5, r1)     // Catch: java.lang.Throwable -> Lab
            if (r9 == r10) goto L44
            r8 = r5
            goto L46
        L44:
            if (r9 != r4) goto L60
        L46:
            r6.close()     // Catch: java.lang.Throwable -> Lab
            r7.close()     // Catch: java.lang.Throwable -> Lab
            if (r8 == 0) goto L6f
            java.io.File r1 = r13.tmp_file
            if (r1 == 0) goto L5f
            boolean r1 = r1.exists()
            if (r1 == 0) goto L5f
            java.io.File r1 = r13.tmp_file
            r1.delete()
            r13.tmp_file = r0
        L5f:
            return
        L60:
            r10 = r5
        L61:
            if (r10 < r9) goto L64
            goto L35
        L64:
            char r11 = r2[r10]     // Catch: java.lang.Throwable -> Lab
            char r12 = r3[r10]     // Catch: java.lang.Throwable -> Lab
            if (r11 == r12) goto L6c
            r8 = r5
            goto L35
        L6c:
            int r10 = r10 + 1
            goto L61
        L6f:
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lae
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> Lae
            java.io.File r7 = r13.tmp_file     // Catch: java.lang.Throwable -> Lae
            r3.<init>(r7)     // Catch: java.lang.Throwable -> Lae
            r6.<init>(r3)     // Catch: java.lang.Throwable -> Lae
            java.io.BufferedWriter r3 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> Lab
            java.io.FileWriter r7 = new java.io.FileWriter     // Catch: java.lang.Throwable -> Lab
            java.io.File r8 = r13.target_file     // Catch: java.lang.Throwable -> Lab
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lab
            r3.<init>(r7)     // Catch: java.lang.Throwable -> Lab
        L87:
            int r7 = r6.read(r2, r5, r1)     // Catch: java.lang.Throwable -> La9
            if (r7 != r4) goto La5
            r6.close()     // Catch: java.io.IOException -> L90
        L90:
            r3.close()     // Catch: java.io.IOException -> L93
        L93:
            java.io.File r1 = r13.tmp_file
            if (r1 == 0) goto La4
            boolean r1 = r1.exists()
            if (r1 == 0) goto La4
            java.io.File r1 = r13.tmp_file
            r1.delete()
            r13.tmp_file = r0
        La4:
            return
        La5:
            r3.write(r2, r5, r7)     // Catch: java.lang.Throwable -> La9
            goto L87
        La9:
            r1 = move-exception
            goto Lb1
        Lab:
            r1 = move-exception
            r3 = r0
            goto Lb1
        Lae:
            r1 = move-exception
            r3 = r0
            r6 = r3
        Lb1:
            if (r6 == 0) goto Lb6
            r6.close()     // Catch: java.io.IOException -> Lb6
        Lb6:
            if (r3 == 0) goto Lbb
            r3.close()     // Catch: java.io.IOException -> Lbb
        Lbb:
            java.io.File r2 = r13.tmp_file
            if (r2 == 0) goto Lcc
            boolean r2 = r2.exists()
            if (r2 == 0) goto Lcc
            java.io.File r2 = r13.tmp_file
            r2.delete()
            r13.tmp_file = r0
        Lcc:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.PreservingFileWriter.close():void");
    }
}
