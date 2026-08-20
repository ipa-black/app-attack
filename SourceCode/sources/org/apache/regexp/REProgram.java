package org.apache.regexp;
/* loaded from: classes3.dex */
public class REProgram {
    static final int OPT_HASBACKREFS = 1;
    int flags;
    char[] instruction;
    int lenInstruction;
    char[] prefix;

    public REProgram(char[] cArr) {
        this(cArr, cArr.length);
    }

    public REProgram(char[] cArr, int i) {
        setInstructions(cArr, i);
    }

    public char[] getInstructions() {
        int i = this.lenInstruction;
        if (i != 0) {
            char[] cArr = new char[i];
            System.arraycopy(this.instruction, 0, cArr, 0, i);
            return cArr;
        }
        return null;
    }

    public void setInstructions(char[] cArr, int i) {
        char c2;
        this.instruction = cArr;
        this.lenInstruction = i;
        int i2 = 0;
        this.flags = 0;
        this.prefix = null;
        if (cArr == null || i == 0) {
            return;
        }
        if (i >= 3 && cArr[0] == '|' && cArr[cArr[2]] == 'E' && i >= 6 && cArr[3] == 'A') {
            char c3 = cArr[4];
            char[] cArr2 = new char[c3];
            this.prefix = cArr2;
            System.arraycopy(cArr, 6, cArr2, 0, c3);
        }
        while (i2 < i) {
            char c4 = cArr[i2];
            if (c4 == '#') {
                this.flags |= 1;
                return;
            }
            if (c4 == 'A') {
                c2 = cArr[i2 + 1];
            } else if (c4 != '[') {
                i2 += 3;
            } else {
                c2 = cArr[i2 + 1] * 2;
            }
            i2 += c2;
            i2 += 3;
        }
    }
}
