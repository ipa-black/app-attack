package org.apache.oro.text.awk;

import java.io.IOException;
import org.apache.oro.text.regex.MatchResult;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternMatcher;
import org.apache.oro.text.regex.PatternMatcherInput;
/* loaded from: classes3.dex */
public final class AwkMatcher implements PatternMatcher {
    private AwkPattern __awkPattern;
    private int __beginOffset;
    private int __lastMatchedBufferOffset;
    private AwkStreamInput __scratchBuffer;
    private AwkStreamInput __streamSearchBuffer;
    private AwkMatchResult __lastMatchResult = null;
    private int[] __offsets = new int[2];

    public AwkMatcher() {
        AwkStreamInput awkStreamInput = new AwkStreamInput();
        this.__scratchBuffer = awkStreamInput;
        awkStreamInput._endOfStreamReached = true;
    }

    private int __streamMatchPrefix() throws IOException {
        int i = this.__offsets[0];
        int i2 = this.__streamSearchBuffer._bufferSize + this.__beginOffset;
        int i3 = 1;
        int i4 = -1;
        int i5 = i;
        while (i < i2) {
            int i6 = i + 1;
            char c2 = this.__streamSearchBuffer._buffer[i];
            if (i3 >= this.__awkPattern._numStates) {
                break;
            }
            int[] _getStateArray = this.__awkPattern._getStateArray(i3);
            int i7 = _getStateArray[c2];
            if (i7 == 0) {
                this.__awkPattern._createNewState(i3, c2, _getStateArray);
                i3 = _getStateArray[c2];
            } else {
                i3 = i7;
            }
            if (i3 == -1) {
                break;
            }
            if (this.__awkPattern._endStates.get(i3)) {
                i4 = i6;
            }
            if (i6 == i2) {
                i = this.__streamSearchBuffer._reallocate(i5) + this.__beginOffset;
                i2 = this.__streamSearchBuffer._bufferSize + this.__beginOffset;
                if (i != i2) {
                    if (i4 != -1) {
                        i4 -= i5;
                    }
                    i5 = 0;
                }
            } else {
                i = i6;
            }
        }
        int[] iArr = this.__offsets;
        iArr[0] = i5;
        iArr[1] = i4 - 1;
        if (i4 == -1 && this.__awkPattern._matchesNullString) {
            return 0;
        }
        if (!this.__awkPattern._hasEndAnchor || (this.__streamSearchBuffer._endOfStreamReached && i4 >= this.__streamSearchBuffer._bufferSize + this.__beginOffset)) {
            return i4 - i5;
        }
        return -1;
    }

    void _search() throws IOException {
        int __streamMatchPrefix;
        this.__lastMatchResult = null;
        while (true) {
            if (this.__lastMatchedBufferOffset >= this.__streamSearchBuffer._bufferSize + this.__beginOffset) {
                if (this.__streamSearchBuffer._endOfStreamReached) {
                    this.__streamSearchBuffer = null;
                    return;
                } else if (!this.__streamSearchBuffer.read()) {
                    return;
                } else {
                    this.__lastMatchedBufferOffset = 0;
                }
            }
            int i = this.__lastMatchedBufferOffset;
            while (i < this.__streamSearchBuffer._bufferSize + this.__beginOffset) {
                this.__offsets[0] = i;
                if (this.__awkPattern._fastMap[this.__streamSearchBuffer._buffer[i]] && (__streamMatchPrefix = __streamMatchPrefix()) > -1) {
                    this.__lastMatchResult = new AwkMatchResult(new String(this.__streamSearchBuffer._buffer, this.__offsets[0], __streamMatchPrefix), this.__offsets[0]);
                    int[] iArr = this.__offsets;
                    this.__lastMatchedBufferOffset = (__streamMatchPrefix > 0 ? iArr[1] : iArr[0]) + 1;
                    return;
                } else if (this.__awkPattern._matchesNullString) {
                    this.__lastMatchResult = new AwkMatchResult(new String(), i);
                    this.__lastMatchedBufferOffset = i + 1;
                    return;
                } else {
                    i = this.__offsets[0] + 1;
                }
            }
            this.__lastMatchedBufferOffset = i;
        }
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(String str, Pattern pattern) {
        return contains(str.toCharArray(), pattern);
    }

    public boolean contains(AwkStreamInput awkStreamInput, Pattern pattern) throws IOException {
        AwkPattern awkPattern = (AwkPattern) pattern;
        this.__awkPattern = awkPattern;
        if (awkPattern._hasBeginAnchor) {
            if (awkStreamInput._bufferOffset != 0) {
                this.__lastMatchResult = null;
                return false;
            } else if (awkStreamInput.read() && !this.__awkPattern._fastMap[awkStreamInput._buffer[0]]) {
                this.__lastMatchResult = null;
                return false;
            }
        }
        this.__lastMatchedBufferOffset = awkStreamInput._currentOffset;
        this.__streamSearchBuffer = awkStreamInput;
        this.__beginOffset = 0;
        _search();
        awkStreamInput._currentOffset = this.__lastMatchedBufferOffset;
        AwkMatchResult awkMatchResult = this.__lastMatchResult;
        if (awkMatchResult != null) {
            awkMatchResult._incrementMatchBeginOffset(awkStreamInput._bufferOffset);
            return true;
        }
        return false;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        this.__awkPattern = (AwkPattern) pattern;
        this.__scratchBuffer._buffer = patternMatcherInput.getBuffer();
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        int beginOffset = patternMatcherInput.getBeginOffset();
        this.__beginOffset = beginOffset;
        awkStreamInput._bufferOffset = beginOffset;
        this.__lastMatchedBufferOffset = patternMatcherInput.getCurrentOffset();
        if (this.__awkPattern._hasBeginAnchor && (this.__beginOffset != this.__lastMatchedBufferOffset || !this.__awkPattern._fastMap[this.__scratchBuffer._buffer[this.__beginOffset]])) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__scratchBuffer._bufferSize = patternMatcherInput.length();
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        try {
            _search();
        } catch (IOException unused) {
        }
        patternMatcherInput.setCurrentOffset(this.__lastMatchedBufferOffset);
        AwkMatchResult awkMatchResult = this.__lastMatchResult;
        if (awkMatchResult == null) {
            return false;
        }
        patternMatcherInput.setMatchOffsets(awkMatchResult.beginOffset(0), this.__lastMatchResult.endOffset(0));
        return true;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean contains(char[] cArr, Pattern pattern) {
        AwkPattern awkPattern = (AwkPattern) pattern;
        this.__awkPattern = awkPattern;
        if (awkPattern._hasBeginAnchor && !this.__awkPattern._fastMap[cArr[0]]) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__scratchBuffer._buffer = cArr;
        this.__scratchBuffer._bufferSize = cArr.length;
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        this.__beginOffset = 0;
        awkStreamInput._bufferOffset = 0;
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        this.__lastMatchedBufferOffset = 0;
        try {
            _search();
        } catch (IOException unused) {
        }
        return this.__lastMatchResult != null;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public MatchResult getMatch() {
        return this.__lastMatchResult;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(String str, Pattern pattern) {
        return matches(str.toCharArray(), pattern);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        int i;
        this.__awkPattern = (AwkPattern) pattern;
        this.__scratchBuffer._buffer = patternMatcherInput.getBuffer();
        this.__scratchBuffer._bufferSize = patternMatcherInput.length();
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        int beginOffset = patternMatcherInput.getBeginOffset();
        this.__beginOffset = beginOffset;
        awkStreamInput._bufferOffset = beginOffset;
        this.__offsets[0] = patternMatcherInput.getBeginOffset();
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        try {
            i = __streamMatchPrefix();
        } catch (IOException unused) {
            i = -1;
        }
        if (i != this.__scratchBuffer._bufferSize) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__lastMatchResult = new AwkMatchResult(new String(this.__scratchBuffer._buffer, this.__offsets[0], this.__scratchBuffer._bufferSize), this.__offsets[0]);
        return true;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matches(char[] cArr, Pattern pattern) {
        int i;
        this.__awkPattern = (AwkPattern) pattern;
        this.__scratchBuffer._buffer = cArr;
        this.__scratchBuffer._bufferSize = cArr.length;
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        this.__beginOffset = 0;
        awkStreamInput._bufferOffset = 0;
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        this.__offsets[0] = 0;
        try {
            i = __streamMatchPrefix();
        } catch (IOException unused) {
            i = -1;
        }
        if (i != cArr.length) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__lastMatchResult = new AwkMatchResult(new String(cArr, 0, i), 0);
        return true;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(String str, Pattern pattern) {
        return matchesPrefix(str.toCharArray(), pattern, 0);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(PatternMatcherInput patternMatcherInput, Pattern pattern) {
        int i;
        this.__awkPattern = (AwkPattern) pattern;
        this.__scratchBuffer._buffer = patternMatcherInput.getBuffer();
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        int beginOffset = patternMatcherInput.getBeginOffset();
        this.__beginOffset = beginOffset;
        awkStreamInput._bufferOffset = beginOffset;
        this.__offsets[0] = patternMatcherInput.getCurrentOffset();
        this.__scratchBuffer._bufferSize = patternMatcherInput.length();
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        try {
            i = __streamMatchPrefix();
        } catch (IOException unused) {
            i = -1;
        }
        if (i < 0) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__lastMatchResult = new AwkMatchResult(new String(this.__scratchBuffer._buffer, this.__offsets[0], i), this.__offsets[0]);
        return true;
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(char[] cArr, Pattern pattern) {
        return matchesPrefix(cArr, pattern, 0);
    }

    @Override // org.apache.oro.text.regex.PatternMatcher
    public boolean matchesPrefix(char[] cArr, Pattern pattern, int i) {
        int i2;
        this.__awkPattern = (AwkPattern) pattern;
        this.__scratchBuffer._buffer = cArr;
        this.__scratchBuffer._bufferSize = cArr.length;
        AwkStreamInput awkStreamInput = this.__scratchBuffer;
        this.__beginOffset = 0;
        awkStreamInput._bufferOffset = 0;
        this.__scratchBuffer._endOfStreamReached = true;
        this.__streamSearchBuffer = this.__scratchBuffer;
        this.__offsets[0] = i;
        try {
            i2 = __streamMatchPrefix();
        } catch (IOException unused) {
            i2 = -1;
        }
        if (i2 < 0) {
            this.__lastMatchResult = null;
            return false;
        }
        this.__lastMatchResult = new AwkMatchResult(new String(cArr, 0, i2), i);
        return true;
    }
}
