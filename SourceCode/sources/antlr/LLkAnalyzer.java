package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class LLkAnalyzer implements LLkGrammarAnalyzer {
    private AlternativeBlock currentBlock;
    protected Tool tool;
    public boolean DEBUG_ANALYZER = false;
    protected Grammar grammar = null;
    protected boolean lexicalAnalysis = false;
    CharFormatter charFormatter = new JavaCharFormatter();

    public LLkAnalyzer(Tool tool) {
        this.tool = null;
        this.tool = tool;
    }

    protected boolean altUsesWildcardDefault(Alternative alternative) {
        AlternativeElement alternativeElement = alternative.head;
        if ((alternativeElement instanceof TreeElement) && (((TreeElement) alternativeElement).root instanceof WildcardElement)) {
            return true;
        }
        return (alternativeElement instanceof WildcardElement) && (alternativeElement.next instanceof BlockEndElement);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public boolean deterministic(AlternativeBlock alternativeBlock) {
        boolean z;
        boolean z2;
        int i;
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("deterministic(").append(alternativeBlock).append(")").toString());
        }
        int size = alternativeBlock.alternatives.size();
        AlternativeBlock alternativeBlock2 = this.currentBlock;
        this.currentBlock = alternativeBlock;
        if (!alternativeBlock.greedy && !(alternativeBlock instanceof OneOrMoreBlock) && !(alternativeBlock instanceof ZeroOrMoreBlock)) {
            this.tool.warning("Being nongreedy only makes sense for (...)+ and (...)*", this.grammar.getFilename(), alternativeBlock.getLine(), alternativeBlock.getColumn());
        }
        int i2 = 1;
        if (size == 1) {
            AlternativeElement alternativeElement = alternativeBlock.getAlternativeAt(0).head;
            this.currentBlock.alti = 0;
            alternativeBlock.getAlternativeAt(0).cache[1] = alternativeElement.look(1);
            alternativeBlock.getAlternativeAt(0).lookaheadDepth = 1;
            this.currentBlock = alternativeBlock2;
            return true;
        }
        int i3 = 0;
        boolean z3 = true;
        while (i3 < size - 1) {
            this.currentBlock.alti = i3;
            this.currentBlock.analysisAlt = i3;
            int i4 = i3 + 1;
            this.currentBlock.altj = i4;
            int i5 = i4;
            while (i5 < size) {
                this.currentBlock.altj = i5;
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("comparing ").append(i3).append(" against alt ").append(i5).toString());
                }
                this.currentBlock.analysisAlt = i5;
                Lookahead[] lookaheadArr = new Lookahead[this.grammar.maxk + i2];
                int i6 = i2;
                while (true) {
                    if (this.DEBUG_ANALYZER) {
                        System.out.println(new StringBuffer("checking depth ").append(i6).append("<=").append(this.grammar.maxk).toString());
                    }
                    Lookahead altLookahead = getAltLookahead(alternativeBlock, i3, i6);
                    Lookahead altLookahead2 = getAltLookahead(alternativeBlock, i5, i6);
                    if (this.DEBUG_ANALYZER) {
                        z = z3;
                        System.out.println(new StringBuffer("p is ").append(altLookahead.toString(",", this.charFormatter, this.grammar)).toString());
                    } else {
                        z = z3;
                    }
                    if (this.DEBUG_ANALYZER) {
                        System.out.println(new StringBuffer("q is ").append(altLookahead2.toString(",", this.charFormatter, this.grammar)).toString());
                    }
                    lookaheadArr[i6] = altLookahead.intersection(altLookahead2);
                    if (this.DEBUG_ANALYZER) {
                        System.out.println(new StringBuffer("intersection at depth ").append(i6).append(" is ").append(lookaheadArr[i6].toString()).toString());
                    }
                    if (lookaheadArr[i6].nil()) {
                        z2 = false;
                    } else {
                        i6++;
                        z2 = true;
                    }
                    if (!z2 || i6 > this.grammar.maxk) {
                        break;
                    }
                    z3 = z;
                }
                Alternative alternativeAt = alternativeBlock.getAlternativeAt(i3);
                Alternative alternativeAt2 = alternativeBlock.getAlternativeAt(i5);
                if (z2) {
                    alternativeAt.lookaheadDepth = Integer.MAX_VALUE;
                    alternativeAt2.lookaheadDepth = Integer.MAX_VALUE;
                    if (alternativeAt.synPred != null) {
                        if (this.DEBUG_ANALYZER) {
                            System.out.println(new StringBuffer("alt ").append(i3).append(" has a syn pred").toString());
                        }
                    } else if (alternativeAt.semPred != null) {
                        if (this.DEBUG_ANALYZER) {
                            System.out.println(new StringBuffer("alt ").append(i3).append(" has a sem pred").toString());
                        }
                    } else if (!altUsesWildcardDefault(alternativeAt2) && ((alternativeBlock.warnWhenFollowAmbig || (!(alternativeAt.head instanceof BlockEndElement) && !(alternativeAt2.head instanceof BlockEndElement))) && alternativeBlock.generateAmbigWarnings && (!alternativeBlock.greedySet || !alternativeBlock.greedy || ((!(alternativeAt.head instanceof BlockEndElement) || (alternativeAt2.head instanceof BlockEndElement)) && (!(alternativeAt2.head instanceof BlockEndElement) || (alternativeAt.head instanceof BlockEndElement)))))) {
                        ToolErrorHandler toolErrorHandler = this.tool.errorHandler;
                        Grammar grammar = this.grammar;
                        i = i5;
                        toolErrorHandler.warnAltAmbiguity(grammar, alternativeBlock, this.lexicalAnalysis, grammar.maxk, lookaheadArr, i3, i5);
                        z3 = false;
                    }
                    i = i5;
                    z3 = false;
                } else {
                    i = i5;
                    alternativeAt.lookaheadDepth = Math.max(alternativeAt.lookaheadDepth, i6);
                    alternativeAt2.lookaheadDepth = Math.max(alternativeAt2.lookaheadDepth, i6);
                    z3 = z;
                }
                i5 = i + 1;
                i2 = 1;
            }
            i3 = i4;
        }
        this.currentBlock = alternativeBlock2;
        return z3;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public boolean deterministic(OneOrMoreBlock oneOrMoreBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("deterministic(...)+(").append(oneOrMoreBlock).append(")").toString());
        }
        AlternativeBlock alternativeBlock = this.currentBlock;
        this.currentBlock = oneOrMoreBlock;
        boolean deterministic = deterministic((AlternativeBlock) oneOrMoreBlock);
        boolean deterministicImpliedPath = deterministicImpliedPath(oneOrMoreBlock);
        this.currentBlock = alternativeBlock;
        return deterministicImpliedPath && deterministic;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public boolean deterministic(ZeroOrMoreBlock zeroOrMoreBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("deterministic(...)*(").append(zeroOrMoreBlock).append(")").toString());
        }
        AlternativeBlock alternativeBlock = this.currentBlock;
        this.currentBlock = zeroOrMoreBlock;
        boolean deterministic = deterministic((AlternativeBlock) zeroOrMoreBlock);
        boolean deterministicImpliedPath = deterministicImpliedPath(zeroOrMoreBlock);
        this.currentBlock = alternativeBlock;
        return deterministicImpliedPath && deterministic;
    }

    public boolean deterministicImpliedPath(BlockWithImpliedExitPath blockWithImpliedExitPath) {
        boolean z;
        boolean z2;
        int size = blockWithImpliedExitPath.getAlternatives().size();
        this.currentBlock.altj = -1;
        if (this.DEBUG_ANALYZER) {
            System.out.println("deterministicImpliedPath");
        }
        boolean z3 = true;
        for (int i = 0; i < size; i++) {
            Alternative alternativeAt = blockWithImpliedExitPath.getAlternativeAt(i);
            if (alternativeAt.head instanceof BlockEndElement) {
                this.tool.warning("empty alternative makes no sense in (...)* or (...)+", this.grammar.getFilename(), blockWithImpliedExitPath.getLine(), blockWithImpliedExitPath.getColumn());
            }
            Lookahead[] lookaheadArr = new Lookahead[this.grammar.maxk + 1];
            int i2 = 1;
            do {
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("checking depth ").append(i2).append("<=").append(this.grammar.maxk).toString());
                }
                Lookahead look = blockWithImpliedExitPath.next.look(i2);
                blockWithImpliedExitPath.exitCache[i2] = look;
                this.currentBlock.alti = i;
                Lookahead altLookahead = getAltLookahead(blockWithImpliedExitPath, i, i2);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("follow is ").append(look.toString(",", this.charFormatter, this.grammar)).toString());
                }
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("p is ").append(altLookahead.toString(",", this.charFormatter, this.grammar)).toString());
                }
                lookaheadArr[i2] = look.intersection(altLookahead);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("intersection at depth ").append(i2).append(" is ").append(lookaheadArr[i2]).toString());
                }
                if (lookaheadArr[i2].nil()) {
                    z = false;
                } else {
                    i2++;
                    z = true;
                }
                if (!z) {
                    break;
                }
            } while (i2 <= this.grammar.maxk);
            if (z) {
                alternativeAt.lookaheadDepth = Integer.MAX_VALUE;
                blockWithImpliedExitPath.exitLookaheadDepth = Integer.MAX_VALUE;
                Alternative alternativeAt2 = blockWithImpliedExitPath.getAlternativeAt(this.currentBlock.alti);
                if (blockWithImpliedExitPath.warnWhenFollowAmbig && blockWithImpliedExitPath.generateAmbigWarnings) {
                    if (blockWithImpliedExitPath.greedy && blockWithImpliedExitPath.greedySet && !(alternativeAt2.head instanceof BlockEndElement)) {
                        if (this.DEBUG_ANALYZER) {
                            System.out.println("greedy loop");
                        }
                    } else {
                        if (!blockWithImpliedExitPath.greedy && !(alternativeAt2.head instanceof BlockEndElement)) {
                            if (this.DEBUG_ANALYZER) {
                                System.out.println("nongreedy loop");
                            }
                            if (!lookaheadEquivForApproxAndFullAnalysis(blockWithImpliedExitPath.exitCache, this.grammar.maxk)) {
                                z2 = false;
                                this.tool.warning(new String[]{"nongreedy block may exit incorrectly due", "\tto limitations of linear approximate lookahead (first k-1 sets", "\tin lookahead not singleton)."}, this.grammar.getFilename(), blockWithImpliedExitPath.getLine(), blockWithImpliedExitPath.getColumn());
                            }
                        } else {
                            z2 = false;
                            ToolErrorHandler toolErrorHandler = this.tool.errorHandler;
                            Grammar grammar = this.grammar;
                            toolErrorHandler.warnAltExitAmbiguity(grammar, blockWithImpliedExitPath, this.lexicalAnalysis, grammar.maxk, lookaheadArr, i);
                        }
                        z3 = z2;
                    }
                }
                z2 = false;
                z3 = z2;
            } else {
                alternativeAt.lookaheadDepth = Math.max(alternativeAt.lookaheadDepth, i2);
                blockWithImpliedExitPath.exitLookaheadDepth = Math.max(blockWithImpliedExitPath.exitLookaheadDepth, i2);
            }
        }
        return z3;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead FOLLOW(int i, RuleEndElement ruleEndElement) {
        String ruleName;
        RuleBlock ruleBlock = (RuleBlock) ruleEndElement.block;
        if (this.lexicalAnalysis) {
            ruleName = CodeGenerator.encodeLexerRuleName(ruleBlock.getRuleName());
        } else {
            ruleName = ruleBlock.getRuleName();
        }
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("FOLLOW(").append(i).append(",").append(ruleName).append(")").toString());
        }
        if (ruleEndElement.lock[i]) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("FOLLOW cycle to ").append(ruleName).toString());
            }
            return new Lookahead(ruleName);
        } else if (ruleEndElement.cache[i] != null) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("cache entry FOLLOW(").append(i).append(") for ").append(ruleName).append(": ").append(ruleEndElement.cache[i].toString(",", this.charFormatter, this.grammar)).toString());
            }
            if (ruleEndElement.cache[i].cycle == null) {
                return (Lookahead) ruleEndElement.cache[i].clone();
            }
            RuleEndElement ruleEndElement2 = ((RuleSymbol) this.grammar.getSymbol(ruleEndElement.cache[i].cycle)).getBlock().endNode;
            if (ruleEndElement2.cache[i] == null) {
                return (Lookahead) ruleEndElement.cache[i].clone();
            }
            ruleEndElement.cache[i] = ruleEndElement2.cache[i];
            return (Lookahead) ruleEndElement2.cache[i].clone();
        } else {
            int i2 = 1;
            ruleEndElement.lock[i] = true;
            Lookahead lookahead = new Lookahead();
            RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleName);
            int i3 = 0;
            while (i3 < ruleSymbol.numReferences()) {
                RuleRefElement reference = ruleSymbol.getReference(i3);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("next[").append(ruleName).append("] is ").append(reference.next.toString()).toString());
                }
                Lookahead look = reference.next.look(i);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("FIRST of next[").append(ruleName).append("] ptr is ").append(look.toString()).toString());
                }
                if (look.cycle != null && look.cycle.equals(ruleName)) {
                    look.cycle = null;
                }
                lookahead.combineWith(look);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("combined FOLLOW[").append(ruleName).append("] is ").append(lookahead.toString()).toString());
                }
                i3++;
                i2 = 1;
            }
            ruleEndElement.lock[i] = false;
            if (lookahead.fset.nil() && lookahead.cycle == null) {
                Grammar grammar = this.grammar;
                if (grammar instanceof TreeWalkerGrammar) {
                    lookahead.fset.add(3);
                } else if (grammar instanceof LexerGrammar) {
                    lookahead.setEpsilon();
                } else {
                    lookahead.fset.add(i2);
                }
            }
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("saving FOLLOW(").append(i).append(") for ").append(ruleName).append(": ").append(lookahead.toString(",", this.charFormatter, this.grammar)).toString());
            }
            ruleEndElement.cache[i] = (Lookahead) lookahead.clone();
            return lookahead;
        }
    }

    private Lookahead getAltLookahead(AlternativeBlock alternativeBlock, int i, int i2) {
        Alternative alternativeAt = alternativeBlock.getAlternativeAt(i);
        AlternativeElement alternativeElement = alternativeAt.head;
        if (alternativeAt.cache[i2] == null) {
            Lookahead look = alternativeElement.look(i2);
            alternativeAt.cache[i2] = look;
            return look;
        }
        return alternativeAt.cache[i2];
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, ActionElement actionElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookAction(").append(i).append(",").append(actionElement).append(")").toString());
        }
        return actionElement.next.look(i);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, AlternativeBlock alternativeBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookAltBlk(").append(i).append(",").append(alternativeBlock).append(")").toString());
        }
        AlternativeBlock alternativeBlock2 = this.currentBlock;
        this.currentBlock = alternativeBlock;
        Lookahead lookahead = new Lookahead();
        for (int i2 = 0; i2 < alternativeBlock.alternatives.size(); i2++) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("alt ").append(i2).append(" of ").append(alternativeBlock).toString());
            }
            this.currentBlock.analysisAlt = i2;
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i2);
            AlternativeElement alternativeElement = alternativeAt.head;
            if (this.DEBUG_ANALYZER && alternativeAt.head == alternativeAt.tail) {
                System.out.println(new StringBuffer("alt ").append(i2).append(" is empty").toString());
            }
            lookahead.combineWith(alternativeElement.look(i));
        }
        if (i == 1 && alternativeBlock.not && subruleCanBeInverted(alternativeBlock, this.lexicalAnalysis)) {
            if (this.lexicalAnalysis) {
                BitSet bitSet = (BitSet) ((LexerGrammar) this.grammar).charVocabulary.clone();
                for (int i3 : lookahead.fset.toArray()) {
                    bitSet.remove(i3);
                }
                lookahead.fset = bitSet;
            } else {
                lookahead.fset.notInPlace(4, this.grammar.tokenManager.maxTokenType());
            }
        }
        this.currentBlock = alternativeBlock2;
        return lookahead;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, BlockEndElement blockEndElement) {
        Lookahead look;
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookBlockEnd(").append(i).append(", ").append(blockEndElement.block).append("); lock is ").append(blockEndElement.lock[i]).toString());
        }
        if (blockEndElement.lock[i]) {
            return new Lookahead();
        }
        if ((blockEndElement.block instanceof ZeroOrMoreBlock) || (blockEndElement.block instanceof OneOrMoreBlock)) {
            blockEndElement.lock[i] = true;
            look = look(i, blockEndElement.block);
            blockEndElement.lock[i] = false;
        } else {
            look = new Lookahead();
        }
        if (blockEndElement.block instanceof TreeElement) {
            look.combineWith(Lookahead.of(3));
        } else if (blockEndElement.block instanceof SynPredBlock) {
            look.setEpsilon();
        } else {
            look.combineWith(blockEndElement.block.next.look(i));
        }
        return look;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, CharLiteralElement charLiteralElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookCharLiteral(").append(i).append(",").append(charLiteralElement).append(")").toString());
        }
        if (i > 1) {
            return charLiteralElement.next.look(i - 1);
        }
        if (this.lexicalAnalysis) {
            if (charLiteralElement.not) {
                BitSet bitSet = (BitSet) ((LexerGrammar) this.grammar).charVocabulary.clone();
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("charVocab is ").append(bitSet.toString()).toString());
                }
                removeCompetingPredictionSets(bitSet, charLiteralElement);
                if (this.DEBUG_ANALYZER) {
                    System.out.println(new StringBuffer("charVocab after removal of prior alt lookahead ").append(bitSet.toString()).toString());
                }
                bitSet.clear(charLiteralElement.getType());
                return new Lookahead(bitSet);
            }
            return Lookahead.of(charLiteralElement.getType());
        }
        this.tool.panic("Character literal reference found in parser");
        return Lookahead.of(charLiteralElement.getType());
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, CharRangeElement charRangeElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookCharRange(").append(i).append(",").append(charRangeElement).append(")").toString());
        }
        if (i > 1) {
            return charRangeElement.next.look(i - 1);
        }
        BitSet of = BitSet.of(charRangeElement.begin);
        for (int i2 = charRangeElement.begin + 1; i2 <= charRangeElement.end; i2++) {
            of.add(i2);
        }
        return new Lookahead(of);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, GrammarAtom grammarAtom) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look(").append(i).append(",").append(grammarAtom).append("[").append(grammarAtom.getType()).append("])").toString());
        }
        if (this.lexicalAnalysis) {
            this.tool.panic("token reference found in lexer");
        }
        if (i > 1) {
            return grammarAtom.next.look(i - 1);
        }
        Lookahead of = Lookahead.of(grammarAtom.getType());
        if (grammarAtom.not) {
            of.fset.notInPlace(4, this.grammar.tokenManager.maxTokenType());
            removeCompetingPredictionSets(of.fset, grammarAtom);
        }
        return of;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, OneOrMoreBlock oneOrMoreBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look+").append(i).append(",").append(oneOrMoreBlock).append(")").toString());
        }
        return look(i, (AlternativeBlock) oneOrMoreBlock);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, RuleBlock ruleBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookRuleBlk(").append(i).append(",").append(ruleBlock).append(")").toString());
        }
        return look(i, (AlternativeBlock) ruleBlock);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, RuleEndElement ruleEndElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookRuleBlockEnd(").append(i).append("); noFOLLOW=").append(ruleEndElement.noFOLLOW).append("; lock is ").append(ruleEndElement.lock[i]).toString());
        }
        if (ruleEndElement.noFOLLOW) {
            Lookahead lookahead = new Lookahead();
            lookahead.setEpsilon();
            lookahead.epsilonDepth = BitSet.of(i);
            return lookahead;
        }
        return FOLLOW(i, ruleEndElement);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, RuleRefElement ruleRefElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookRuleRef(").append(i).append(",").append(ruleRefElement).append(")").toString());
        }
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleRefElement.targetRule);
        if (ruleSymbol == null || !ruleSymbol.defined) {
            this.tool.error(new StringBuffer("no definition of rule ").append(ruleRefElement.targetRule).toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
            return new Lookahead();
        }
        RuleEndElement ruleEndElement = ruleSymbol.getBlock().endNode;
        boolean z = ruleEndElement.noFOLLOW;
        ruleEndElement.noFOLLOW = true;
        Lookahead look = look(i, ruleRefElement.targetRule);
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("back from rule ref to ").append(ruleRefElement.targetRule).toString());
        }
        ruleEndElement.noFOLLOW = z;
        if (look.cycle != null) {
            this.tool.error(new StringBuffer("infinite recursion to rule ").append(look.cycle).append(" from rule ").append(ruleRefElement.enclosingRuleName).toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
        }
        if (look.containsEpsilon()) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("rule ref to ").append(ruleRefElement.targetRule).append(" has eps, depth: ").append(look.epsilonDepth).toString());
            }
            look.resetEpsilon();
            int[] array = look.epsilonDepth.toArray();
            look.epsilonDepth = null;
            for (int i2 : array) {
                look.combineWith(ruleRefElement.next.look(i - (i - i2)));
            }
        }
        return look;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, StringLiteralElement stringLiteralElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookStringLiteral(").append(i).append(",").append(stringLiteralElement).append(")").toString());
        }
        if (this.lexicalAnalysis) {
            if (i > stringLiteralElement.processedAtomText.length()) {
                return stringLiteralElement.next.look(i - stringLiteralElement.processedAtomText.length());
            }
            return Lookahead.of(stringLiteralElement.processedAtomText.charAt(i - 1));
        } else if (i > 1) {
            return stringLiteralElement.next.look(i - 1);
        } else {
            Lookahead of = Lookahead.of(stringLiteralElement.getType());
            if (stringLiteralElement.not) {
                of.fset.notInPlace(4, this.grammar.tokenManager.maxTokenType());
            }
            return of;
        }
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, SynPredBlock synPredBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look=>(").append(i).append(",").append(synPredBlock).append(")").toString());
        }
        return synPredBlock.next.look(i);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, TokenRangeElement tokenRangeElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookTokenRange(").append(i).append(",").append(tokenRangeElement).append(")").toString());
        }
        if (i > 1) {
            return tokenRangeElement.next.look(i - 1);
        }
        BitSet of = BitSet.of(tokenRangeElement.begin);
        for (int i2 = tokenRangeElement.begin + 1; i2 <= tokenRangeElement.end; i2++) {
            of.add(i2);
        }
        return new Lookahead(of);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, TreeElement treeElement) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look(").append(i).append(",").append(treeElement.root).append("[").append(treeElement.root.getType()).append("])").toString());
        }
        if (i > 1) {
            return treeElement.next.look(i - 1);
        }
        if (treeElement.root instanceof WildcardElement) {
            return treeElement.root.look(1);
        }
        Lookahead of = Lookahead.of(treeElement.root.getType());
        if (treeElement.root.not) {
            of.fset.notInPlace(4, this.grammar.tokenManager.maxTokenType());
            return of;
        }
        return of;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, WildcardElement wildcardElement) {
        BitSet bitSet;
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look(").append(i).append(",").append(wildcardElement).append(")").toString());
        }
        if (i > 1) {
            return wildcardElement.next.look(i - 1);
        }
        if (this.lexicalAnalysis) {
            bitSet = (BitSet) ((LexerGrammar) this.grammar).charVocabulary.clone();
        } else {
            BitSet bitSet2 = new BitSet(1);
            bitSet2.notInPlace(4, this.grammar.tokenManager.maxTokenType());
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("look(").append(i).append(",").append(wildcardElement).append(") after not: ").append(bitSet2).toString());
            }
            bitSet = bitSet2;
        }
        return new Lookahead(bitSet);
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, ZeroOrMoreBlock zeroOrMoreBlock) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("look*(").append(i).append(",").append(zeroOrMoreBlock).append(")").toString());
        }
        Lookahead look = look(i, (AlternativeBlock) zeroOrMoreBlock);
        look.combineWith(zeroOrMoreBlock.next.look(i));
        return look;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public Lookahead look(int i, String str) {
        if (this.DEBUG_ANALYZER) {
            System.out.println(new StringBuffer("lookRuleName(").append(i).append(",").append(str).append(")").toString());
        }
        RuleBlock block = ((RuleSymbol) this.grammar.getSymbol(str)).getBlock();
        if (block.lock[i]) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("infinite recursion to rule ").append(block.getRuleName()).toString());
            }
            return new Lookahead(str);
        } else if (block.cache[i] != null) {
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("found depth ").append(i).append(" result in FIRST ").append(str).append(" cache: ").append(block.cache[i].toString(",", this.charFormatter, this.grammar)).toString());
            }
            return (Lookahead) block.cache[i].clone();
        } else {
            block.lock[i] = true;
            Lookahead look = look(i, block);
            block.lock[i] = false;
            block.cache[i] = (Lookahead) look.clone();
            if (this.DEBUG_ANALYZER) {
                System.out.println(new StringBuffer("saving depth ").append(i).append(" result in FIRST ").append(str).append(" cache: ").append(block.cache[i].toString(",", this.charFormatter, this.grammar)).toString());
            }
            return look;
        }
    }

    public static boolean lookaheadEquivForApproxAndFullAnalysis(Lookahead[] lookaheadArr, int i) {
        for (int i2 = 1; i2 <= i - 1; i2++) {
            if (lookaheadArr[i2].fset.degree() > 1) {
                return false;
            }
        }
        return true;
    }

    private void removeCompetingPredictionSets(BitSet bitSet, AlternativeElement alternativeElement) {
        AlternativeBlock alternativeBlock = this.currentBlock;
        AlternativeElement alternativeElement2 = alternativeBlock.getAlternativeAt(alternativeBlock.analysisAlt).head;
        if (alternativeElement2 instanceof TreeElement) {
            if (((TreeElement) alternativeElement2).root != alternativeElement) {
                return;
            }
        } else if (alternativeElement != alternativeElement2) {
            return;
        }
        for (int i = 0; i < this.currentBlock.analysisAlt; i++) {
            bitSet.subtractInPlace(this.currentBlock.getAlternativeAt(i).head.look(1).fset);
        }
    }

    private void removeCompetingPredictionSetsFromWildcard(Lookahead[] lookaheadArr, AlternativeElement alternativeElement, int i) {
        for (int i2 = 1; i2 <= i; i2++) {
            for (int i3 = 0; i3 < this.currentBlock.analysisAlt; i3++) {
                lookaheadArr[i2].fset.subtractInPlace(this.currentBlock.getAlternativeAt(i3).head.look(i2).fset);
            }
        }
    }

    private void reset() {
        this.grammar = null;
        this.DEBUG_ANALYZER = false;
        this.currentBlock = null;
        this.lexicalAnalysis = false;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public void setGrammar(Grammar grammar) {
        if (this.grammar != null) {
            reset();
        }
        this.grammar = grammar;
        this.lexicalAnalysis = grammar instanceof LexerGrammar;
        this.DEBUG_ANALYZER = grammar.analyzerDebug;
    }

    @Override // antlr.LLkGrammarAnalyzer
    public boolean subruleCanBeInverted(AlternativeBlock alternativeBlock, boolean z) {
        int i;
        if ((alternativeBlock instanceof ZeroOrMoreBlock) || (alternativeBlock instanceof OneOrMoreBlock) || (alternativeBlock instanceof SynPredBlock) || alternativeBlock.alternatives.size() == 0) {
            return false;
        }
        for (i = 0; i < alternativeBlock.alternatives.size(); i = i + 1) {
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i);
            if (alternativeAt.synPred == null && alternativeAt.semPred == null && alternativeAt.exceptionSpec == null) {
                AlternativeElement alternativeElement = alternativeAt.head;
                i = (((alternativeElement instanceof CharLiteralElement) || (alternativeElement instanceof TokenRefElement) || (alternativeElement instanceof CharRangeElement) || (alternativeElement instanceof TokenRangeElement) || ((alternativeElement instanceof StringLiteralElement) && !z)) && (alternativeElement.next instanceof BlockEndElement) && alternativeElement.getAutoGenType() == 1) ? i + 1 : 0;
            }
            return false;
        }
        return true;
    }
}
