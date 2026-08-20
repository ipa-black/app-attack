package org.apache.oro.text;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Vector;
import org.apache.oro.text.regex.MalformedPatternException;
import org.apache.oro.text.regex.Pattern;
import org.apache.oro.text.regex.PatternCompiler;
import org.apache.oro.text.regex.PatternMatcher;
import org.apache.oro.text.regex.Perl5Compiler;
import org.apache.oro.text.regex.Perl5Matcher;
/* loaded from: classes3.dex */
public final class MatchActionProcessor {
    private Vector __actions;
    private PatternCompiler __compiler;
    private MatchAction __defaultAction;
    private Pattern __fieldSeparator;
    private PatternMatcher __matcher;
    private Vector __patterns;

    public MatchActionProcessor() {
        this(new Perl5Compiler(), new Perl5Matcher());
    }

    public MatchActionProcessor(PatternCompiler patternCompiler, PatternMatcher patternMatcher) {
        this.__fieldSeparator = null;
        this.__patterns = new Vector();
        this.__actions = new Vector();
        this.__defaultAction = new DefaultMatchAction();
        this.__compiler = patternCompiler;
        this.__matcher = patternMatcher;
    }

    public void addAction(String str) throws MalformedPatternException {
        addAction(str, 0);
    }

    public void addAction(String str, int i) throws MalformedPatternException {
        addAction(str, i, this.__defaultAction);
    }

    public void addAction(String str, int i, MatchAction matchAction) throws MalformedPatternException {
        if (str != null) {
            this.__patterns.addElement(this.__compiler.compile(str, i));
        } else {
            this.__patterns.addElement(null);
        }
        this.__actions.addElement(matchAction);
    }

    public void addAction(String str, MatchAction matchAction) throws MalformedPatternException {
        addAction(str, 0, matchAction);
    }

    public void processMatches(InputStream inputStream, OutputStream outputStream) throws IOException {
        processMatches(new InputStreamReader(inputStream), new OutputStreamWriter(outputStream));
    }

    public void processMatches(InputStream inputStream, OutputStream outputStream, String str) throws IOException {
        processMatches(new InputStreamReader(inputStream, str), new OutputStreamWriter(outputStream));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0073, code lost:
        if (r9.__fieldSeparator != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
        if (r9.__fieldSeparator != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
        r1.clear();
        org.apache.oro.text.regex.Util.split(r1, r9.__matcher, r9.__fieldSeparator, r11.line);
        r11.fields = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0091, code lost:
        r11.fields = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processMatches(java.io.Reader r10, java.io.Writer r11) throws java.io.IOException {
        /*
            r9 = this;
            java.io.LineNumberReader r0 = new java.io.LineNumberReader
            r0.<init>(r10)
            java.io.PrintWriter r10 = new java.io.PrintWriter
            r10.<init>(r11)
            org.apache.oro.text.MatchActionInfo r11 = new org.apache.oro.text.MatchActionInfo
            r11.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            org.apache.oro.text.regex.PatternMatcher r2 = r9.__matcher
            r11.matcher = r2
            org.apache.oro.text.regex.Pattern r2 = r9.__fieldSeparator
            r11.fieldSeparator = r2
            r11.input = r0
            r11.output = r10
            r2 = 0
            r11.fields = r2
            java.util.Vector r3 = r9.__patterns
            int r3 = r3.size()
            r4 = 0
            r11.lineNumber = r4
        L2c:
            java.lang.String r5 = r0.readLine()
            r11.line = r5
            if (r5 != 0) goto L3b
            r10.flush()
            r0.close()
            return
        L3b:
            java.lang.String r5 = r11.line
            char[] r5 = r5.toCharArray()
            r11.charLine = r5
            r5 = r4
        L44:
            if (r5 < r3) goto L47
            goto L2c
        L47:
            java.util.Vector r6 = r9.__patterns
            java.lang.Object r6 = r6.elementAt(r5)
            if (r6 == 0) goto L76
            java.util.Vector r6 = r9.__patterns
            java.lang.Object r6 = r6.elementAt(r5)
            org.apache.oro.text.regex.Pattern r6 = (org.apache.oro.text.regex.Pattern) r6
            org.apache.oro.text.regex.PatternMatcher r7 = r9.__matcher
            char[] r8 = r11.charLine
            boolean r7 = r7.contains(r8, r6)
            if (r7 == 0) goto L9e
            org.apache.oro.text.regex.PatternMatcher r7 = r9.__matcher
            org.apache.oro.text.regex.MatchResult r7 = r7.getMatch()
            r11.match = r7
            int r7 = r0.getLineNumber()
            r11.lineNumber = r7
            r11.pattern = r6
            org.apache.oro.text.regex.Pattern r6 = r9.__fieldSeparator
            if (r6 == 0) goto L91
            goto L82
        L76:
            r11.match = r2
            int r6 = r0.getLineNumber()
            r11.lineNumber = r6
            org.apache.oro.text.regex.Pattern r6 = r9.__fieldSeparator
            if (r6 == 0) goto L91
        L82:
            r1.clear()
            org.apache.oro.text.regex.PatternMatcher r6 = r9.__matcher
            org.apache.oro.text.regex.Pattern r7 = r9.__fieldSeparator
            java.lang.String r8 = r11.line
            org.apache.oro.text.regex.Util.split(r1, r6, r7, r8)
            r11.fields = r1
            goto L93
        L91:
            r11.fields = r2
        L93:
            java.util.Vector r6 = r9.__actions
            java.lang.Object r6 = r6.elementAt(r5)
            org.apache.oro.text.MatchAction r6 = (org.apache.oro.text.MatchAction) r6
            r6.processMatch(r11)
        L9e:
            int r5 = r5 + 1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.oro.text.MatchActionProcessor.processMatches(java.io.Reader, java.io.Writer):void");
    }

    public void setFieldSeparator(String str) throws MalformedPatternException {
        setFieldSeparator(str, 0);
    }

    public void setFieldSeparator(String str, int i) throws MalformedPatternException {
        this.__fieldSeparator = str == null ? null : this.__compiler.compile(str, i);
    }
}
