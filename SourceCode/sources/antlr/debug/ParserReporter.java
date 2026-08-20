package antlr.debug;
/* loaded from: classes.dex */
public class ParserReporter extends Tracer implements ParserListener {
    @Override // antlr.debug.ParserTokenListener
    public void parserConsume(ParserTokenEvent parserTokenEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserTokenEvent).toString());
    }

    @Override // antlr.debug.ParserTokenListener
    public void parserLA(ParserTokenEvent parserTokenEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserTokenEvent).toString());
    }

    @Override // antlr.debug.ParserMatchListener
    public void parserMatch(ParserMatchEvent parserMatchEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserMatchEvent).toString());
    }

    @Override // antlr.debug.ParserMatchListener
    public void parserMatchNot(ParserMatchEvent parserMatchEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserMatchEvent).toString());
    }

    @Override // antlr.debug.ParserMatchListener
    public void parserMismatch(ParserMatchEvent parserMatchEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserMatchEvent).toString());
    }

    @Override // antlr.debug.ParserMatchListener
    public void parserMismatchNot(ParserMatchEvent parserMatchEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(parserMatchEvent).toString());
    }

    @Override // antlr.debug.MessageListener
    public void reportError(MessageEvent messageEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(messageEvent).toString());
    }

    @Override // antlr.debug.MessageListener
    public void reportWarning(MessageEvent messageEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(messageEvent).toString());
    }

    @Override // antlr.debug.SemanticPredicateListener
    public void semanticPredicateEvaluated(SemanticPredicateEvent semanticPredicateEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(semanticPredicateEvent).toString());
    }

    @Override // antlr.debug.SyntacticPredicateListener
    public void syntacticPredicateFailed(SyntacticPredicateEvent syntacticPredicateEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(syntacticPredicateEvent).toString());
    }

    @Override // antlr.debug.SyntacticPredicateListener
    public void syntacticPredicateStarted(SyntacticPredicateEvent syntacticPredicateEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(syntacticPredicateEvent).toString());
    }

    @Override // antlr.debug.SyntacticPredicateListener
    public void syntacticPredicateSucceeded(SyntacticPredicateEvent syntacticPredicateEvent) {
        System.out.println(new StringBuffer().append(this.indent).append(syntacticPredicateEvent).toString());
    }
}
