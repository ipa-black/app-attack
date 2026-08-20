package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DefaultToolErrorHandler implements ToolErrorHandler {
    private final Tool antlrTool;
    CharFormatter javaCharFormatter = new JavaCharFormatter();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultToolErrorHandler(Tool tool) {
        this.antlrTool = tool;
    }

    private void dumpSets(String[] strArr, int i, Grammar grammar, boolean z, int i2, Lookahead[] lookaheadArr) {
        StringBuffer stringBuffer = new StringBuffer(100);
        int i3 = 1;
        while (i3 <= i2) {
            stringBuffer.append("k==").append(i3).append(':');
            if (z) {
                String stringWithRanges = lookaheadArr[i3].fset.toStringWithRanges(",", this.javaCharFormatter);
                if (lookaheadArr[i3].containsEpsilon()) {
                    stringBuffer.append("<end-of-token>");
                    if (stringWithRanges.length() > 0) {
                        stringBuffer.append(',');
                    }
                }
                stringBuffer.append(stringWithRanges);
            } else {
                stringBuffer.append(lookaheadArr[i3].fset.toString(",", grammar.tokenManager.getVocabulary()));
            }
            strArr[i] = stringBuffer.toString();
            stringBuffer.setLength(0);
            i3++;
            i++;
        }
    }

    @Override // antlr.ToolErrorHandler
    public void warnAltAmbiguity(Grammar grammar, AlternativeBlock alternativeBlock, boolean z, int i, Lookahead[] lookaheadArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer(100);
        if ((alternativeBlock instanceof RuleBlock) && ((RuleBlock) alternativeBlock).isLexerAutoGenRule()) {
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i2);
            Alternative alternativeAt2 = alternativeBlock.getAlternativeAt(i3);
            String reverseLexerRuleName = CodeGenerator.reverseLexerRuleName(((RuleRefElement) alternativeAt.head).targetRule);
            String reverseLexerRuleName2 = CodeGenerator.reverseLexerRuleName(((RuleRefElement) alternativeAt2.head).targetRule);
            stringBuffer.append("lexical nondeterminism between rules ");
            stringBuffer.append(reverseLexerRuleName).append(" and ").append(reverseLexerRuleName2).append(" upon");
        } else {
            if (z) {
                stringBuffer.append("lexical ");
            }
            stringBuffer.append("nondeterminism between alts ");
            stringBuffer.append(i2 + 1).append(" and ");
            stringBuffer.append(i3 + 1).append(" of block upon");
        }
        String[] strArr = new String[i + 1];
        strArr[0] = stringBuffer.toString();
        dumpSets(strArr, 1, grammar, z, i, lookaheadArr);
        this.antlrTool.warning(strArr, grammar.getFilename(), alternativeBlock.getLine(), alternativeBlock.getColumn());
    }

    @Override // antlr.ToolErrorHandler
    public void warnAltExitAmbiguity(Grammar grammar, BlockWithImpliedExitPath blockWithImpliedExitPath, boolean z, int i, Lookahead[] lookaheadArr, int i2) {
        String[] strArr = new String[i + 2];
        strArr[0] = (z ? "lexical " : "").concat("nondeterminism upon");
        dumpSets(strArr, 1, grammar, z, i, lookaheadArr);
        strArr[i + 1] = new StringBuffer("between alt ").append(i2 + 1).append(" and exit branch of block").toString();
        this.antlrTool.warning(strArr, grammar.getFilename(), blockWithImpliedExitPath.getLine(), blockWithImpliedExitPath.getColumn());
    }
}
