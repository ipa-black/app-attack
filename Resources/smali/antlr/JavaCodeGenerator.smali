.class public Lantlr/JavaCodeGenerator;
.super Lantlr/CodeGenerator;
.source "JavaCodeGenerator.java"


# static fields
.field protected static final NONUNIQUE:Ljava/lang/String;

.field public static final caseSizeThreshold:I = 0x7f


# instance fields
.field astVarNumber:I

.field commonExtraArgs:Ljava/lang/String;

.field commonExtraParams:Ljava/lang/String;

.field commonLocalVars:Ljava/lang/String;

.field currentASTResult:Ljava/lang/String;

.field currentRule:Lantlr/RuleBlock;

.field declaredASTVariables:Ljava/util/HashSet;

.field exceptionThrown:Ljava/lang/String;

.field protected genAST:Z

.field labeledElementASTType:Ljava/lang/String;

.field labeledElementInit:Ljava/lang/String;

.field labeledElementType:Ljava/lang/String;

.field lt1Value:Ljava/lang/String;

.field protected saveText:Z

.field private semPreds:Lantlr/collections/impl/Vector;

.field protected syntacticPredLevel:I

.field throwNoViable:Ljava/lang/String;

.field treeVariableMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    .line 27
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 30
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    .line 77
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method private GenRuleInvocation(Lantlr/RuleRefElement;)V
    .locals 7

    .line 2679
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2682
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const-string v1, ","

    if-eqz v0, :cond_2

    .line 2684
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2685
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 2688
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2690
    :goto_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2691
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2696
    :cond_2
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2697
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2698
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2702
    :cond_3
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 2703
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2705
    new-instance v1, Lantlr/ActionTransInfo;

    invoke-direct {v1}, Lantlr/ActionTransInfo;-><init>()V

    .line 2706
    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v2, v3, v4, v1}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2707
    iget-boolean v3, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2708
    :cond_4
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Arguments of rule reference \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' cannot set or ref #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v5

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2711
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2714
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2715
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Rule \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' accepts no arguments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 2721
    :cond_6
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2722
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Missing parameters on reference to rule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2725
    :cond_7
    :goto_1
    const-string p1, ");"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2728
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_8

    .line 2729
    const-string p1, "_t = _retTree;"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private genBitSet(Lantlr/collections/impl/BitSet;I)V
    .locals 6

    .line 1317
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "private static final long[] mk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->lengthInLongWords()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1322
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\tlong[] data = { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toStringOfWords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "};"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1326
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\tlong[] data = new long["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toPackedArray()[J

    move-result-object p1

    const/4 v0, 0x0

    .line 1328
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 1355
    :goto_1
    const-string p1, "\treturn data;"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1356
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1358
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "public static final BitSet "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " = new BitSet(mk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "());"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 1329
    :cond_1
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 1334
    array-length v4, p1

    if-eq v3, v4, :cond_6

    aget-wide v4, p1, v3

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    goto :goto_4

    .line 1343
    :cond_3
    :goto_2
    array-length v1, p1

    if-ge v3, v1, :cond_5

    aget-wide v1, p1, v3

    aget-wide v4, p1, v0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1348
    :cond_5
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\tfor (int i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; i<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; i++) { data[i]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-wide v4, p1, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1336
    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\tdata["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-wide v4, p1, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_5
    move v0, v3

    goto/16 :goto_0
.end method

.method private genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V
    .locals 1

    .line 1372
    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_2

    .line 1374
    :cond_0
    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    if-eqz v0, :cond_1

    .line 1375
    const-string v0, "else {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_1
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1380
    :goto_0
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1381
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1382
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1383
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1386
    :cond_2
    iget-object p2, p1, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1387
    iget-object p1, p1, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private genElementAST(Lantlr/AlternativeElement;)V
    .locals 11

    .line 1837
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in = "

    const-string v2, " "

    const-string v3, "_AST"

    const-string v4, "tmp"

    const/4 v5, 0x1

    const-string v6, ";"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    .line 1842
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1843
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1845
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    add-int/2addr v4, v5

    iput v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    .line 1848
    invoke-direct {p0, p1, v3}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 1850
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_10

    .line 1856
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1867
    :goto_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v8

    if-eq v8, v7, :cond_4

    instance-of v7, p1, Lantlr/TokenRefElement;

    if-eqz v7, :cond_4

    move v0, v5

    .line 1873
    :cond_4
    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 1880
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1881
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 1882
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1885
    :cond_5
    iget-object v7, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1887
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1889
    iget v8, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    add-int/2addr v8, v5

    iput v8, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    move-object v10, v7

    move-object v7, v4

    move-object v4, v10

    :goto_1
    if-eqz v0, :cond_8

    .line 1895
    instance-of v8, p1, Lantlr/GrammarAtom;

    if-eqz v8, :cond_7

    .line 1896
    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    .line 1897
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1898
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1902
    :cond_6
    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1907
    :cond_7
    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_8
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1916
    invoke-direct {p0, p1, v3}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 1917
    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_9

    .line 1919
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "_in = null;"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1930
    :cond_9
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v7, " = "

    if-eqz v2, :cond_b

    .line 1931
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_a

    .line 1932
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    invoke-virtual {p0, v8, v4}, Lantlr/JavaCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1935
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1940
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 1941
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1942
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_c

    .line 1943
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lantlr/GrammarAtom;

    invoke-virtual {p0, v4, v0}, Lantlr/JavaCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1946
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1949
    :goto_4
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_d

    .line 1951
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1955
    :cond_d
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_10

    .line 1956
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    const-string v0, ");"

    if-eq p1, v5, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    goto :goto_5

    .line 1961
    :cond_e
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "astFactory.makeASTRoot(currentAST, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1958
    :cond_f
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "astFactory.addASTChild(currentAST, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method

.method private genErrorCatchForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 1978
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1979
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 1980
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 1981
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1983
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 1985
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 1987
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1989
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1990
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1991
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    :cond_3
    return-void
.end method

.method private genErrorHandler(Lantlr/ExceptionSpec;)V
    .locals 6

    const/4 v0, 0x0

    .line 1998
    :goto_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1999
    :cond_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/ExceptionHandler;

    .line 2001
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "catch ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2002
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2003
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_1

    .line 2004
    const-string v2, "if (inputState.guessing==0) {"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2005
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2009
    :cond_1
    new-instance v2, Lantlr/ActionTransInfo;

    invoke-direct {v2}, Lantlr/ActionTransInfo;-><init>()V

    .line 2010
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getLine()I

    move-result v4

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v4, v5, v2}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 2016
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const-string v3, "}"

    if-eqz v2, :cond_2

    .line 2017
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2018
    const-string v2, "} else {"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2019
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2021
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "throw "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->extractIdOfAction(Lantlr/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2026
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2027
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2030
    :cond_2
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2031
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private genErrorTryForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2037
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2038
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2039
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2040
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2042
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2044
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2046
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2048
    const-string p1, "try { // for error handling"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2049
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    :cond_3
    return-void
.end method

.method private genLiteralsTest()V
    .locals 1

    .line 2082
    const-string v0, "_ttype = testLiteralsTable(_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genLiteralsTestForPartialToken()V
    .locals 1

    .line 2086
    const-string v0, "_ttype = testLiteralsTable(new String(text.getBuffer(),_begin,text.length()-_begin),_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getValueString(I)Ljava/lang/String;
    .locals 3

    .line 3178
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 3179
    iget-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3182
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->getTokenSymbolAt(I)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3184
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3187
    :cond_1
    invoke-virtual {v0}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3188
    instance-of v2, v0, Lantlr/StringLiteralSymbol;

    if-eqz v2, :cond_4

    .line 3192
    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 3193
    invoke-virtual {v0}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3198
    :cond_2
    invoke-direct {p0, v1}, Lantlr/JavaCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3200
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private lookaheadString(I)Ljava/lang/String;
    .locals 2

    .line 3227
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    .line 3228
    const-string p1, "_t.getType()"

    return-object p1

    .line 3230
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LA("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private mangleLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3240
    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    .line 3241
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_1

    .line 3248
    sget-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    if-eqz p1, :cond_0

    .line 3249
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3242
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 3246
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 3333
    instance-of v0, p1, Lantlr/TreeElement;

    if-eqz v0, :cond_0

    .line 3334
    check-cast p1, Lantlr/TreeElement;

    iget-object p1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, p1, p2}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void

    .line 3342
    :cond_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3343
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_1

    .line 3345
    check-cast p1, Lantlr/TokenRefElement;

    iget-object p1, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    goto :goto_0

    .line 3347
    :cond_1
    instance-of v0, p1, Lantlr/RuleRefElement;

    if-eqz v0, :cond_2

    .line 3349
    check-cast p1, Lantlr/RuleRefElement;

    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 3354
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3356
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    sget-object v0, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3360
    :cond_3
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private setupGrammarParameters(Lantlr/Grammar;)V
    .locals 7

    .line 3420
    instance-of v0, p1, Lantlr/ParserGrammar;

    const-string v1, "null"

    const-string v2, "RecognitionException"

    const-string v3, "\""

    const-string v4, "AST"

    const-string v5, ""

    const-string v6, "ASTLabelType"

    if-eqz v0, :cond_1

    .line 3421
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3422
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    invoke-virtual {p1, v6}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3425
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3427
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3431
    :cond_0
    const-string p1, "Token "

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3432
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3433
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 3434
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3435
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 3436
    const-string p1, "LT(1)"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3437
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 3438
    const-string p1, "throw new NoViableAltException(LT(1), getFilename());"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 3440
    :cond_1
    instance-of v0, p1, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 3441
    const-string p1, "char "

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3442
    const-string p1, "\'\\0\'"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3443
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 3444
    const-string p1, "boolean _createToken"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3445
    const-string p1, "int _ttype; Token _token=null; int _begin=text.length();"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 3446
    const-string p1, "LA(1)"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3447
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 3448
    const-string p1, "throw new NoViableAltForCharException((char)LA(1), getFilename(), getLine(), getColumn());"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_0

    .line 3450
    :cond_2
    instance-of v0, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_5

    .line 3451
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3452
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3453
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3454
    invoke-virtual {p1, v6}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3456
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3458
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3459
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3463
    :cond_3
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3464
    new-instance v0, Lantlr/Token;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v4}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v6, v0}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    .line 3466
    :cond_4
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3467
    const-string p1, "_t"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 3468
    const-string p1, "AST _t"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3469
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 3470
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")_t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3471
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 3472
    const-string p1, "throw new NoViableAltException(_t);"

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_0

    .line 3475
    :cond_5
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Unknown grammar type"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static suitableForCaseExpression(Lantlr/Alternative;)Z
    .locals 2

    .line 1826
    iget v0, p0, Lantlr/Alternative;->lookaheadDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object p0, p0, v1

    iget-object p0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected addSemPred(Ljava/lang/String;)I
    .locals 1

    .line 86
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public exitIfError()V
    .locals 2

    .line 91
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Tool;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Exiting due to errors."

    invoke-virtual {v0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen()V
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 118
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 120
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    .line 126
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->genTokenInterchange(Lantlr/TokenManager;)V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 105
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 106
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 107
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 109
    invoke-direct {p0, v1}, Lantlr/JavaCodeGenerator;->setupGrammarParameters(Lantlr/Grammar;)V

    .line 110
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 113
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 3

    .line 140
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genAction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    iget p1, p1, Lantlr/GrammarElement;->line:I

    invoke-virtual {p0, v0, p1}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "if ( inputState.guessing==0 ) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 152
    :cond_2
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 153
    iget-object v1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result p1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v1, p1, v2, v0}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object v1, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")currentAST.root;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 167
    :cond_3
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 169
    iget-boolean p1, v0, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-eqz p1, :cond_4

    .line 171
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "currentAST.root = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 173
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "currentAST.child = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "!=null &&"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ".getFirstChild()!=null ?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 174
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 175
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ".getFirstChild() : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 176
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 177
    const-string p1, "currentAST.advanceChildToEnd();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 180
    :cond_4
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p1, :cond_5

    .line 181
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 182
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "gen("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 194
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 197
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 202
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0, p1, v1}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 205
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 207
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 210
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 3

    .line 219
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genRuleEnd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 3

    .line 226
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genChar("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 234
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 235
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 3

    .line 242
    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 250
    const-string v1, "_saveIndex=text.length();"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 253
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "matchRange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 256
    const-string p1, "text.setLength(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-boolean v0, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 267
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v1, 0x1

    .line 276
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 278
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 281
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 283
    iget-object v2, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 287
    const-string v2, "import java.io.InputStream;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 288
    const-string v2, "import antlr.TokenStreamException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 289
    const-string v2, "import antlr.TokenStreamIOException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 290
    const-string v2, "import antlr.TokenStreamRecognitionException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 291
    const-string v2, "import antlr.CharStreamException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 292
    const-string v2, "import antlr.CharStreamIOException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 293
    const-string v2, "import antlr.ANTLRException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 294
    const-string v2, "import java.io.Reader;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 295
    const-string v2, "import java.util.Hashtable;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "import antlr."

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 297
    const-string v2, "import antlr.InputBuffer;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 298
    const-string v2, "import antlr.ByteBuffer;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 299
    const-string v2, "import antlr.CharBuffer;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 300
    const-string v2, "import antlr.Token;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 301
    const-string v2, "import antlr.CommonToken;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 302
    const-string v2, "import antlr.RecognitionException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 303
    const-string v2, "import antlr.NoViableAltForCharException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 304
    const-string v2, "import antlr.MismatchedCharException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 305
    const-string v2, "import antlr.TokenStream;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 306
    const-string v2, "import antlr.ANTLRHashString;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 307
    const-string v2, "import antlr.LexerSharedInputState;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 308
    const-string v2, "import antlr.collections.impl.BitSet;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 309
    const-string v2, "import antlr.SemanticException;"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "antlr."

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_0
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 325
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 330
    :cond_3
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v6, "classHeaderPrefix"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/Token;

    .line 331
    const-string v6, "\""

    if-eqz v5, :cond_4

    .line 332
    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 338
    :cond_4
    const-string v5, "public"

    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 339
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "class "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " extends "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 340
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, " implements "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, ", TokenStream"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v5, "classHeaderSuffix"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_5

    .line 343
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 345
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ", "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 348
    :cond_5
    const-string v2, " {"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v5, v6, v7}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 359
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "public "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "(InputStream in) {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 360
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 361
    const-string v2, "this(new ByteBuffer(in));"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 362
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 363
    const-string v2, "}"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 369
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "(Reader in) {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 370
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v6, v1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    .line 371
    const-string v6, "this(new CharBuffer(in));"

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 372
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v6, v1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    .line 373
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 375
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "(InputBuffer ib) {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 376
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v6, v1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    .line 378
    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v6, :cond_6

    .line 379
    const-string v6, "this(new LexerSharedInputState(new antlr.debug.DebuggingInputBuffer(ib)));"

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    :cond_6
    const-string v6, "this(new LexerSharedInputState(ib));"

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 382
    :goto_2
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v6, v1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    .line 383
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 388
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "(LexerSharedInputState state) {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 389
    iget v5, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, v1

    iput v5, p0, Lantlr/CodeGenerator;->tabs:I

    .line 391
    const-string v5, "super(state);"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 394
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v5, :cond_7

    .line 395
    const-string v5, "  ruleNames  = _ruleNames;"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 396
    const-string v5, "  semPredNames = _semPredNames;"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 397
    const-string v5, "  setupDebugging();"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 403
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "caseSensitiveLiterals = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 404
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "setCaseSensitive("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v4, ");"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 409
    const-string p1, "literals = new Hashtable();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object p1

    .line 411
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_f

    .line 422
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 425
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_b

    .line 429
    const-string p1, "private static final String _ruleNames[] = {"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 433
    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_a

    .line 438
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 434
    :cond_a
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 435
    instance-of v4, v1, Lantlr/RuleSymbol;

    if-eqz v4, :cond_9

    .line 436
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "  \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {v1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "\","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 444
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genNextToken()V

    .line 447
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move p1, v0

    .line 449
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_d

    .line 459
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_c

    .line 460
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genSemPredMap()V

    .line 463
    :cond_c
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-object v0, v0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 465
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 470
    iput-object v7, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 450
    :cond_d
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/RuleSymbol;

    .line 452
    invoke-virtual {v1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnextToken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    add-int/lit8 v5, p1, 0x1

    .line 453
    invoke-virtual {p0, v1, v0, p1}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move p1, v5

    .line 455
    :cond_e
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_6

    .line 412
    :cond_f
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_10

    goto/16 :goto_3

    .line 416
    :cond_10
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5, v4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    .line 417
    instance-of v5, v4, Lantlr/StringLiteralSymbol;

    if-eqz v5, :cond_8

    .line 418
    check-cast v4, Lantlr/StringLiteralSymbol;

    .line 419
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "literals.put(new ANTLRHashString("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", this), new Integer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "));"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 10

    .line 477
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "gen+("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 482
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_cnt_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_cnt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "int "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 493
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_loop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 496
    const-string v2, "do {"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 497
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 500
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 503
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 505
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 508
    :cond_3
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    .line 521
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    .line 523
    iget-boolean v5, p1, Lantlr/AlternativeBlock;->greedy:Z

    const/4 v6, 0x0

    if-nez v5, :cond_4

    iget v5, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    if-gt v5, v7, :cond_4

    iget-object v5, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    iget v7, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 527
    iget v4, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    goto :goto_2

    .line 529
    :cond_4
    iget-boolean v5, p1, Lantlr/AlternativeBlock;->greedy:Z

    if-nez v5, :cond_5

    iget v5, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_5

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v6

    .line 536
    :goto_3
    const-string v7, "if ( "

    if-eqz v5, :cond_7

    .line 537
    iget-boolean v5, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v5, :cond_6

    .line 538
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "nongreedy (...)+ loop; exit depth is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v9, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    :cond_6
    iget-object v5, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v5, v4}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v4

    .line 544
    const-string v5, "// nongreedy exit test"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 545
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ">=1 && "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ") break "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 548
    :cond_7
    invoke-virtual {p0, p1, v6}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 549
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">=1 ) { break "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "; } else {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 554
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "++;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 555
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 556
    const-string p1, "} while (true);"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 560
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-boolean v0, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 572
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/ParserGrammar;

    if-nez p1, :cond_1

    .line 573
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Internal error generating parser"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 578
    :cond_1
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    iput-boolean p1, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 p1, 0x0

    .line 582
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 585
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 587
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "import antlr.TokenBuffer;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 591
    const-string v0, "import antlr.TokenStreamException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 592
    const-string v0, "import antlr.TokenStreamIOException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 593
    const-string v0, "import antlr.ANTLRException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "import antlr."

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "import antlr.Token;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "import antlr.TokenStream;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 597
    const-string v0, "import antlr.RecognitionException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "import antlr.NoViableAltException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "import antlr.MismatchedTokenException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "import antlr.SemanticException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 601
    const-string v0, "import antlr.ParserSharedInputState;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 602
    const-string v0, "import antlr.collections.impl.BitSet;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 603
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_2

    .line 604
    const-string v0, "import antlr.collections.AST;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "import java.util.Hashtable;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 606
    const-string v0, "import antlr.ASTFactory;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "import antlr.ASTPair;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 608
    const-string v0, "import antlr.collections.impl.ASTArray;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 612
    :cond_2
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "antlr."

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 623
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 628
    :cond_4
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderPrefix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    .line 629
    const-string v3, "\""

    if-eqz v2, :cond_5

    .line 630
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 636
    :cond_5
    const-string v2, "public"

    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 637
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "class "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " extends "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "       implements "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v2, "classHeaderSuffix"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    if-eqz v0, :cond_6

    .line 642
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 644
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 646
    :cond_6
    const-string v0, " {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_9

    .line 651
    const-string v0, "private static final String _ruleNames[] = {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 655
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_8

    .line 660
    const-string v0, "};"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 656
    :cond_8
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/GrammarSymbol;

    .line 657
    instance-of v3, v2, Lantlr/RuleSymbol;

    if-eqz v3, :cond_7

    .line 658
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "  \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast v2, Lantlr/RuleSymbol;

    invoke-virtual {v2}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 664
    :cond_9
    :goto_3
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "protected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "(TokenBuffer tokenBuf, int k) {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 671
    const-string v0, "  super(tokenBuf,k);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 672
    const-string v0, "  tokenNames = _tokenNames;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    const-string v5, "  semPredNames = _semPredNames;"

    const-string v6, "  ruleNames  = _ruleNames;"

    if-eqz v3, :cond_a

    .line 676
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 678
    const-string v3, "  setupDebugging(tokenBuf);"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 680
    :cond_a
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->buildAST:Z

    const-string v7, "  astFactory = new ASTFactory(getTokenTypeToASTClassMap());"

    const-string v8, "  buildTokenTypeASTClassMap();"

    if-eqz v3, :cond_b

    .line 681
    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 684
    :cond_b
    const-string v3, "}"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 687
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "public "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v11, "(TokenBuffer tokenBuf) {"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 688
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v11, "  this(tokenBuf,"

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v11, v11, Lantlr/Grammar;->maxk:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v11, ");"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 693
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v9, "(TokenStream lexer, int k) {"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 694
    const-string v2, "  super(lexer,k);"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_c

    .line 700
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 702
    const-string v2, "  setupDebugging(lexer);"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 704
    :cond_c
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_d

    .line 705
    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 708
    :cond_d
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 711
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "(TokenStream lexer) {"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 712
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "  this(lexer,"

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 716
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "(ParserSharedInputState state) {"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 717
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "  super(state,"

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_e

    .line 720
    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 723
    :cond_e
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move v2, p1

    .line 729
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_11

    .line 739
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenStrings()V

    .line 741
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    if-eqz p1, :cond_f

    .line 742
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenASTNodeMap()V

    .line 746
    :cond_f
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 749
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_10

    .line 750
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genSemPredMap()V

    .line 753
    :cond_10
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 757
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 758
    iput-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 730
    :cond_11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/GrammarSymbol;

    .line 731
    instance-of v6, v5, Lantlr/RuleSymbol;

    if-eqz v6, :cond_13

    .line 732
    check-cast v5, Lantlr/RuleSymbol;

    .line 733
    iget-object v6, v5, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v6}, Lantlr/collections/impl/Vector;->size()I

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x1

    goto :goto_5

    :cond_12
    move v6, p1

    :goto_5
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v6, v2}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move v2, v7

    .line 735
    :cond_13
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_4
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 6

    .line 765
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genRR("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 767
    const-string v1, "Rule \'"

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 772
    :cond_1
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_2

    .line 774
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' does not name a grammar rule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 778
    :cond_2
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 782
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_3

    .line 785
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = _t==ASTNULL ? null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 789
    :cond_3
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 790
    :cond_4
    const-string v2, "_saveIndex=text.length();"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 794
    :cond_5
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 795
    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 797
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 798
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' has no return type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 800
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_7
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-nez v2, :cond_8

    iget v2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_8

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 805
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' returns a value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 810
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->GenRuleInvocation(Lantlr/RuleRefElement;)V

    .line 813
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 814
    :cond_9
    const-string v0, "text.setLength(_saveIndex);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 818
    :cond_a
    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_11

    .line 819
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    .line 831
    :cond_c
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 833
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_AST = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")returnAST;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 835
    :cond_d
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_10

    .line 836
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_1

    .line 842
    :cond_e
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal: encountered ^ after rule reference"

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 839
    :cond_f
    const-string v0, "astFactory.addASTChild(currentAST, returnAST);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 850
    :cond_10
    :goto_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 851
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=_returnToken;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 859
    :cond_11
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void

    .line 769
    :cond_12
    :goto_2
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' is not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public gen(Lantlr/StringLiteralElement;)V
    .locals 3

    .line 866
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genString("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    :cond_0
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_1

    .line 870
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 874
    :cond_1
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 877
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    .line 878
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 881
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 883
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 886
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    .line 887
    const-string p1, "_t = _t.getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 895
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 896
    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 901
    :cond_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "matchRange("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 3

    .line 912
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genTokenRef("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 916
    :cond_1
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 918
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_2

    .line 919
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 923
    :cond_2
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 925
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 926
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    .line 929
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    .line 930
    const-string p1, "_t = _t.getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 6

    .line 936
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AST __t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 939
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = _t==ASTNULL ? null :("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")_t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 944
    :cond_0
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 945
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'!\' is not implemented"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 947
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/AlternativeElement;->setAutoGenType(I)V

    .line 949
    :cond_1
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 950
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'^\' is redundant; already a root"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 952
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/AlternativeElement;->setAutoGenType(I)V

    .line 956
    :cond_2
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 957
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_3

    .line 959
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ASTPair __currentAST"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = currentAST.copy();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 961
    const-string v0, "currentAST.root = currentAST.child;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 962
    const-string v0, "currentAST.child = null;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 966
    :cond_3
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    .line 967
    const-string v0, "if ( _t==null ) throw new MismatchedTokenException();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :cond_4
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 973
    :goto_0
    const-string v0, "_t = _t.getFirstChild();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 976
    :goto_1
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 985
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const-string v1, ";"

    if-eqz v0, :cond_5

    .line 988
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "currentAST = __currentAST"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 991
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "_t = __t"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 993
    const-string p1, "_t = _t.getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 977
    :cond_6
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 978
    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_2
    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 980
    :cond_7
    invoke-virtual {v1}, Lantlr/GrammarElement;->generate()V

    .line 981
    iget-object v1, v1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_2
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 999
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 1000
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-nez p1, :cond_0

    .line 1001
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Internal error generating tree-walker"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 1006
    :cond_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 1008
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    iput-boolean p1, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 p1, 0x0

    .line 1009
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1012
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 1014
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "import antlr."

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1018
    const-string v0, "import antlr.Token;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1019
    const-string v0, "import antlr.collections.AST;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1020
    const-string v0, "import antlr.RecognitionException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1021
    const-string v0, "import antlr.ANTLRException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1022
    const-string v0, "import antlr.NoViableAltException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1023
    const-string v0, "import antlr.MismatchedTokenException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1024
    const-string v0, "import antlr.SemanticException;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1025
    const-string v0, "import antlr.collections.impl.BitSet;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1026
    const-string v0, "import antlr.ASTPair;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1027
    const-string v0, "import antlr.collections.impl.ASTArray;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1038
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "antlr."

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1044
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 1049
    :cond_2
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderPrefix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    .line 1050
    const-string v3, "\""

    if-eqz v2, :cond_3

    .line 1051
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1057
    :cond_3
    const-string v2, "public"

    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1058
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "class "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " extends "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "       implements "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v2, "classHeaderSuffix"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    if-eqz v0, :cond_4

    .line 1062
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1064
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1067
    :cond_4
    const-string v0, " {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "public "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "() {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1076
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1077
    const-string v0, "tokenNames = _tokenNames;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1078
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v2

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1079
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1083
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v5, p1

    .line 1086
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1096
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenStrings()V

    .line 1099
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->maxTokenType()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 1102
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1106
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1107
    iput-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 1087
    :cond_5
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 1088
    instance-of v7, v6, Lantlr/RuleSymbol;

    if-eqz v7, :cond_7

    .line 1089
    check-cast v6, Lantlr/RuleSymbol;

    .line 1090
    iget-object v7, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_6

    move v7, v2

    goto :goto_3

    :cond_6
    move v7, p1

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v5}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move v5, v8

    .line 1092
    :cond_7
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_2
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 1115
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1120
    :cond_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1122
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 1123
    const-string p1, "if ( _t==null ) throw new MismatchedTokenException();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    .line 1126
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1128
    :cond_2
    const-string v0, "_saveIndex=text.length();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1130
    :cond_3
    const-string v0, "matchNot(EOF_CHAR);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 1133
    :cond_4
    const-string p1, "text.setLength(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "matchNot("

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1141
    :cond_6
    :goto_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    .line 1142
    const-string p1, "_t = _t.getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 9

    .line 1150
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "gen*("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 1154
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1155
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_loop"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1161
    const-string v1, "do {"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1162
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1165
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 1168
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1169
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1170
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1173
    :cond_2
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    .line 1186
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    .line 1188
    iget-boolean v4, p1, Lantlr/AlternativeBlock;->greedy:Z

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget v4, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    if-gt v4, v6, :cond_3

    iget-object v4, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    iget v6, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1192
    iget v3, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    goto :goto_1

    .line 1194
    :cond_3
    iget-boolean v4, p1, Lantlr/AlternativeBlock;->greedy:Z

    if-nez v4, :cond_4

    iget v4, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_4

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1198
    :goto_2
    const-string v6, ";"

    if-eqz v4, :cond_6

    .line 1199
    iget-boolean v4, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v4, :cond_5

    .line 1200
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "nongreedy (...)* loop; exit depth is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v8, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1203
    :cond_5
    iget-object v4, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v4, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v3

    .line 1206
    const-string v4, "// nongreedy exit test"

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "if ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") break "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1210
    :cond_6
    invoke-virtual {p0, p1, v5}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 1211
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "break "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 1213
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1214
    const-string p1, "} while (true);"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1215
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1218
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;)V
    .locals 1

    .line 2054
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 2058
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2063
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2067
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, "_AST = null;"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2070
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1227
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1230
    iget-boolean v3, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v3, :cond_1

    .line 1231
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1234
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1235
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1238
    iget-object v4, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    .line 1239
    const-string v4, "try {      // for error handling"

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1240
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1243
    :cond_2
    iget-object v4, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1244
    :goto_1
    instance-of v5, v4, Lantlr/BlockEndElement;

    if-eqz v5, :cond_6

    .line 1249
    iget-boolean v4, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v4, :cond_4

    .line 1250
    instance-of v4, p2, Lantlr/RuleBlock;

    if-eqz v4, :cond_3

    .line 1252
    check-cast p2, Lantlr/RuleBlock;

    .line 1253
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 1257
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, "_AST = ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, ")currentAST.root;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1258
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    goto :goto_2

    .line 1263
    :cond_3
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1266
    iget-object v4, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result p2

    const-string v7, "Labeled subrules not yet supported"

    invoke-virtual {v4, v7, v5, v6, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1270
    :cond_4
    :goto_2
    iget-object p2, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz p2, :cond_5

    .line 1272
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p2, v2

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1273
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1274
    iget-object p1, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    .line 1277
    :cond_5
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1278
    iput-boolean v3, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1280
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    return-void

    .line 1245
    :cond_6
    invoke-virtual {v4}, Lantlr/GrammarElement;->generate()V

    .line 1246
    iget-object v4, v4, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_1
.end method

.method protected genBitsets(Lantlr/collections/impl/Vector;I)V
    .locals 2

    .line 1296
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1297
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1298
    :cond_0
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 1300
    invoke-virtual {v1, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 1301
    invoke-direct {p0, v1, v0}, Lantlr/JavaCodeGenerator;->genBitSet(Lantlr/collections/impl/BitSet;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected genBlockInitAction(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 1397
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result p1

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1409
    instance-of v0, p1, Lantlr/RuleBlock;

    if-eqz v0, :cond_8

    .line 1410
    check-cast p1, Lantlr/RuleBlock;

    .line 1411
    iget-object v0, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1412
    :goto_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    .line 1413
    :cond_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 1420
    instance-of v2, v1, Lantlr/RuleRefElement;

    const-string v3, ";"

    const-string v4, " = "

    const-string v5, " "

    if-nez v2, :cond_3

    instance-of v6, v1, Lantlr/AlternativeBlock;

    if-eqz v6, :cond_1

    instance-of v6, v1, Lantlr/RuleBlock;

    if-nez v6, :cond_1

    instance-of v6, v1, Lantlr/SynPredBlock;

    if-nez v6, :cond_1

    goto :goto_1

    .line 1460
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1464
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_7

    .line 1465
    instance-of v2, v1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1468
    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1471
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 1427
    move-object v2, v1

    check-cast v2, Lantlr/AlternativeBlock;

    iget-boolean v6, v2, Lantlr/AlternativeBlock;->not:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    invoke-interface {v6, v2, v7}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1436
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_7

    .line 1437
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto :goto_2

    .line 1441
    :cond_4
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_5

    .line 1445
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    .line 1447
    :cond_5
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_6

    .line 1448
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "Token "

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "=null;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1450
    :cond_6
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_7

    .line 1453
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method protected genCases(Lantlr/collections/impl/BitSet;)V
    .locals 8

    .line 1484
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "genCases("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1487
    :cond_0
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p1

    .line 1489
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v3, v2

    .line 1492
    :goto_1
    array-length v6, p1

    const-string v7, ""

    if-lt v3, v6, :cond_3

    if-nez v5, :cond_2

    .line 1512
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-ne v4, v1, :cond_4

    .line 1494
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1497
    :cond_4
    const-string v5, "  "

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 1499
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "case "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget v6, p1, v3

    invoke-direct {p0, v6}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    if-ne v4, v0, :cond_5

    .line 1502
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    move v4, v1

    move v5, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1532
    new-instance v2, Lantlr/JavaBlockFinishingInfo;

    invoke-direct {v2}, Lantlr/JavaBlockFinishingInfo;-><init>()V

    .line 1533
    iget-boolean v3, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "genCommonBlock("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1536
    :cond_0
    iget-boolean v3, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1537
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    iput-boolean v6, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1539
    iget-boolean v6, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v6, :cond_2

    .line 1540
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    iput-boolean v7, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1543
    iget-boolean v7, v1, Lantlr/AlternativeBlock;->not:Z

    const-string v8, ""

    if-eqz v7, :cond_7

    iget-object v7, v0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/LexerGrammar;

    invoke-interface {v7, v1, v9}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1547
    iget-boolean v3, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "special case: ~(subrule)"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1548
    :cond_3
    iget-object v3, v0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v4, v1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v3

    .line 1550
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, v0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v4, :cond_4

    .line 1551
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1555
    :cond_4
    invoke-direct/range {p0 .. p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1558
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_5

    .line 1559
    const-string v8, "_t,"

    .line 1563
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "match("

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v3

    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1566
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_6

    .line 1567
    const-string v1, "_t = _t.getNextSibling();"

    invoke-virtual {v0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-object v2

    .line 1573
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v4, :cond_a

    .line 1574
    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 1576
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_8

    .line 1577
    iget-object v9, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v10, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v11

    iget-object v11, v11, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v11}, Lantlr/GrammarElement;->getLine()I

    move-result v11

    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v12

    iget-object v12, v12, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v12}, Lantlr/GrammarElement;->getColumn()I

    move-result v12

    const-string v13, "Syntactic predicate superfluous for single alternative"

    invoke-virtual {v9, v13, v10, v11, v12}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_8
    if-eqz p2, :cond_a

    .line 1585
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1587
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iget v4, v1, Lantlr/GrammarElement;->line:I

    invoke-virtual {v0, v3, v4}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 1589
    :cond_9
    invoke-virtual {v0, v7, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    return-object v2

    :cond_a
    move v7, v5

    move v9, v7

    .line 1604
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-lt v7, v10, :cond_2b

    .line 1612
    iget v7, v0, Lantlr/CodeGenerator;->makeSwitchThreshold:I

    const-string v10, "{"

    const-string v11, "if (_t==null) _t=ASTNULL;"

    const-string v12, "}"

    if-lt v9, v7, :cond_f

    .line 1614
    invoke-direct {v0, v4}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v7

    .line 1617
    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v9, :cond_b

    .line 1618
    invoke-virtual {v0, v11}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1620
    :cond_b
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v13, "switch ( "

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, ") {"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    move v7, v5

    .line 1621
    :goto_3
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-lt v7, v9, :cond_c

    .line 1644
    const-string v7, "default:"

    invoke-virtual {v0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1645
    iget v7, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v7, v4

    iput v7, v0, Lantlr/CodeGenerator;->tabs:I

    move v5, v4

    goto :goto_5

    .line 1622
    :cond_c
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 1625
    invoke-static {v9}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_4

    .line 1628
    :cond_d
    iget-object v13, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v13, v13, v4

    .line 1629
    iget-object v14, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v14}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v13}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v14

    if-nez v14, :cond_e

    .line 1630
    iget-object v13, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v14, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v14}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v15}, Lantlr/GrammarElement;->getLine()I

    move-result v15

    iget-object v9, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v9}, Lantlr/GrammarElement;->getColumn()I

    move-result v9

    const-string v5, "Alternate omitted due to empty prediction set"

    invoke-virtual {v13, v5, v14, v15, v9}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 1635
    :cond_e
    iget-object v5, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->genCases(Lantlr/collections/impl/BitSet;)V

    .line 1636
    invoke-virtual {v0, v10}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1637
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, v4

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1638
    invoke-virtual {v0, v9, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 1639
    const-string v5, "break;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1640
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v5, v4

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1641
    invoke-virtual {v0, v12}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    .line 1661
    :goto_5
    iget-object v7, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    if-eqz v7, :cond_10

    iget-object v7, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    move v13, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_7
    if-gez v13, :cond_15

    move v1, v4

    :goto_8
    if-le v1, v7, :cond_14

    .line 1802
    iput-boolean v3, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1805
    iput-boolean v6, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v5, :cond_12

    .line 1809
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, v4

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1810
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 1811
    iput-boolean v4, v2, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-lez v9, :cond_11

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    .line 1812
    :goto_9
    iput-boolean v4, v2, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    goto :goto_b

    .line 1817
    :cond_12
    iput-object v8, v2, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1818
    iput-boolean v1, v2, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-lez v9, :cond_13

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    .line 1819
    :goto_a
    iput-boolean v4, v2, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    :goto_b
    return-object v2

    .line 1798
    :cond_14
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1663
    :cond_15
    iget-boolean v14, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v14, :cond_16

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    const-string v4, "checking depth "

    invoke-direct {v15, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    const/4 v4, 0x0

    .line 1664
    :goto_c
    iget-object v14, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v14}, Lantlr/collections/impl/Vector;->size()I

    move-result v14

    if-lt v4, v14, :cond_17

    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x1

    goto :goto_7

    .line 1665
    :cond_17
    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v14

    .line 1666
    iget-boolean v15, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v15, :cond_18

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v18, v6

    const-string v6, "genAlt: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    move/from16 v17, v3

    move/from16 v18, v6

    :goto_d
    if-eqz v5, :cond_19

    .line 1671
    invoke-static {v14}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1672
    iget-boolean v3, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_1d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ignoring alt because it was in the switch"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 1679
    :cond_19
    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v3, v3, Lantlr/LexerGrammar;

    if-eqz v3, :cond_1f

    .line 1683
    iget v3, v14, Lantlr/Alternative;->lookaheadDepth:I

    const v6, 0x7fffffff

    if-ne v3, v6, :cond_1a

    .line 1686
    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    :cond_1a
    :goto_e
    const/4 v6, 0x1

    if-lt v3, v6, :cond_1c

    .line 1688
    iget-object v6, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_f

    :cond_1b
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_1c
    :goto_f
    if-eq v3, v13, :cond_1e

    .line 1695
    iget-boolean v6, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v6, :cond_1d

    .line 1696
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "ignoring alt because effectiveDepth!=altDepth;"

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v14, "!="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d
    :goto_10
    move-object/from16 v19, v2

    move/from16 v22, v4

    move/from16 p2, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v10

    move/from16 v21, v13

    const/4 v3, 0x1

    goto/16 :goto_16

    .line 1699
    :cond_1e
    invoke-virtual {v0, v14, v3}, Lantlr/JavaCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v6

    .line 1700
    invoke-virtual {v0, v14, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 1703
    :cond_1f
    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v3}, Lantlr/JavaCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v6

    .line 1704
    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v3

    .line 1709
    :goto_11
    iget-object v15, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    iget-object v15, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v15}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v15

    move/from16 p2, v5

    const-string v5, "if "

    move-object/from16 v20, v8

    const-string v8, "else if "

    move/from16 v21, v13

    const-string v13, " {"

    move/from16 v22, v4

    const/16 v4, 0x7f

    if-le v15, v4, :cond_21

    invoke-static {v14}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v4

    if-eqz v4, :cond_21

    if-nez v9, :cond_20

    .line 1712
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1715
    :cond_20
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_12
    move-object/from16 v19, v2

    move-object/from16 v23, v10

    goto/16 :goto_15

    .line 1718
    :cond_21
    const-string v4, "else {"

    if-eqz v6, :cond_23

    iget-object v6, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v6, :cond_23

    iget-object v6, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v6, :cond_23

    if-nez v9, :cond_22

    .line 1726
    invoke-virtual {v0, v10}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 1729
    :cond_22
    invoke-virtual {v0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_13
    const/4 v6, 0x0

    .line 1731
    iput-boolean v6, v2, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    goto :goto_12

    :cond_23
    const/4 v6, 0x0

    .line 1737
    iget-object v15, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v15, :cond_26

    .line 1741
    new-instance v15, Lantlr/ActionTransInfo;

    invoke-direct {v15}, Lantlr/ActionTransInfo;-><init>()V

    .line 1742
    iget-object v6, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    move-object/from16 v19, v2

    iget v2, v1, Lantlr/GrammarElement;->line:I

    move-object/from16 v23, v10

    iget-object v10, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0, v6, v2, v10, v15}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1750
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/ParserGrammar;

    const-string v10, "))"

    const-string v15, "("

    if-nez v6, :cond_24

    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_25

    :cond_24
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v6, :cond_25

    .line 1753
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, v0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v6, v2}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/JavaCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 1757
    :cond_25
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "&&("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_26
    move-object/from16 v19, v2

    move-object/from16 v23, v10

    :goto_14
    if-lez v9, :cond_28

    .line 1763
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_27

    .line 1764
    invoke-virtual {v0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1765
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1766
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v3}, Lantlr/JavaCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 1770
    :cond_27
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 1774
    :cond_28
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_29

    .line 1775
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v3}, Lantlr/JavaCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    goto :goto_15

    .line 1780
    :cond_29
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_2a

    .line 1781
    invoke-virtual {v0, v11}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 1783
    :cond_2a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_15
    add-int/lit8 v9, v9, 0x1

    .line 1790
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1791
    invoke-virtual {v0, v14, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 1792
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1793
    invoke-virtual {v0, v12}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :goto_16
    add-int/lit8 v4, v22, 0x1

    move/from16 v5, p2

    move/from16 v3, v17

    move/from16 v6, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    move/from16 v13, v21

    move-object/from16 v10, v23

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v19, v2

    move/from16 v17, v3

    move v3, v4

    move/from16 v18, v6

    move-object/from16 v20, v8

    .line 1605
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 1606
    invoke-static {v2}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v9, v9, 0x1

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    move/from16 v3, v17

    move/from16 v6, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    const/4 v5, 0x0

    goto/16 :goto_2
.end method

.method protected genHeader()V
    .locals 3

    .line 2075
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "// $ANTLR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" -> \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".java\"$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genMatch(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2093
    instance-of v0, p1, Lantlr/StringLiteralElement;

    if-eqz v0, :cond_1

    .line 2094
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 2095
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2098
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2101
    :cond_1
    instance-of v0, p1, Lantlr/CharLiteralElement;

    if-eqz v0, :cond_3

    .line 2102
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 2103
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2106
    :cond_2
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "cannot ref character literals in grammar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2109
    :cond_3
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_4

    .line 2110
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2112
    :cond_4
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_5

    .line 2113
    check-cast p1, Lantlr/WildcardElement;

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->gen(Lantlr/WildcardElement;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected genMatch(Lantlr/collections/impl/BitSet;)V
    .locals 0

    return-void
.end method

.method protected genMatchUsingAtomText(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2120
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    .line 2121
    const-string v0, "_t,"

    goto :goto_0

    .line 2120
    :cond_0
    const-string v0, ""

    .line 2125
    :goto_0
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2126
    :cond_1
    const-string v1, "_saveIndex=text.length();"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2129
    :cond_2
    iget-boolean v1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v1, :cond_3

    const-string v1, "matchNot("

    goto :goto_1

    :cond_3
    const-string v1, "match("

    :goto_1
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2133
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2135
    const-string v0, "Token.EOF_TYPE"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 2138
    :cond_4
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2140
    :goto_2
    const-string v0, ");"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2142
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 2143
    :cond_5
    const-string p1, "text.setLength(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V
    .locals 2

    .line 2150
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    .line 2151
    const-string v0, "_t,"

    goto :goto_0

    .line 2150
    :cond_0
    const-string v0, ""

    .line 2156
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean p1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz p1, :cond_1

    const-string p1, "matchNot("

    goto :goto_1

    :cond_1
    const-string p1, "match("

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genNextToken()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 2170
    :goto_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, "\t\tthrow new TokenStreamException(cse.getMessage());"

    const-string v4, "public Token nextToken() throws TokenStreamException {"

    const-string v5, "\t}"

    const-string v6, ""

    const-string v7, "}"

    if-lt v1, v2, :cond_0

    .line 2178
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2180
    const-string v0, "\ttry {uponEOF();}"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2181
    const-string v0, "\tcatch(CharStreamIOException csioe) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2182
    const-string v0, "\t\tthrow new TokenStreamIOException(csioe.io);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2184
    const-string v0, "\tcatch(CharStreamException cse) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2187
    const-string v0, "\treturn new CommonToken(Token.EOF_TYPE, \"\");"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2171
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 2172
    invoke-virtual {v2}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v2, v2, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v8, "public"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2194
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v9, "nextToken"

    invoke-static {v1, v2, v9}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v2

    .line 2196
    new-instance v1, Lantlr/RuleSymbol;

    const-string v9, "mnextToken"

    invoke-direct {v1, v9}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v1}, Lantlr/RuleSymbol;->setDefined()V

    .line 2198
    invoke-virtual {v1, v2}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    .line 2199
    const-string v9, "private"

    iput-object v9, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 2200
    iget-object v9, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9, v1}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 2202
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, v2}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 2206
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-boolean v1, v1, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v1, :cond_1

    .line 2207
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-object v1, v1, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v9, v1

    .line 2210
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2212
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2213
    const-string v1, "Token theRetToken=null;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2214
    const-string v1, "tryAgain:"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2215
    const-string v1, "for (;;) {"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2216
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v4

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2217
    const-string v1, "Token _token = null;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2218
    const-string v1, "int _ttype = Token.INVALID_TYPE;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2219
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-boolean v1, v1, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v1, :cond_5

    .line 2220
    const-string v1, "setCommitToPath(false);"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v9, :cond_5

    .line 2223
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v9}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v1

    const-string v10, " does not exist in this lexer"

    const-string v11, "Filter rule "

    if-nez v1, :cond_2

    .line 2224
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2227
    :cond_2
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v9}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v1

    check-cast v1, Lantlr/RuleSymbol;

    .line 2228
    invoke-virtual {v1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v12

    if-nez v12, :cond_3

    .line 2229
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2231
    :cond_3
    iget-object v1, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2232
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, " must be protected"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 2235
    :cond_4
    :goto_2
    const-string v1, "int _m;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2236
    const-string v1, "_m = mark();"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2239
    :cond_5
    const-string v8, "resetText();"

    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2241
    const-string v1, "try {   // for char stream error handling"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2242
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v4

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2245
    const-string v1, "try {   // for lexical error handling"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2246
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v4

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    move v1, v0

    .line 2249
    :goto_3
    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-lt v1, v10, :cond_d

    .line 2260
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2261
    invoke-virtual {p0, v2, v0}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object v0

    .line 2263
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "if (LA(1)==EOF_CHAR) {uponEOF(); _returnToken = makeToken(Token.EOF_TYPE);}"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2264
    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v11, Lantlr/LexerGrammar;

    iget-boolean v11, v11, Lantlr/LexerGrammar;->filterMode:Z

    const-string v12, "(false);}"

    const-string v13, "else {"

    if-eqz v11, :cond_7

    if-nez v9, :cond_6

    .line 2266
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, "else {consume(); continue tryAgain;}"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 2269
    :cond_6
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\tcommit();"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\ttry {m"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\tcatch(RecognitionException e) {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\t\t// catastrophic failure"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\t\treportError(e);"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\t\tconsume();"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\t}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\t\t\t\t\tcontinue tryAgain;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v10, "\t\t\t\t}"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2282
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v10, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2284
    :goto_4
    invoke-direct {p0, v0, v1}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_8

    if-eqz v9, :cond_8

    .line 2288
    const-string v0, "commit();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2294
    :cond_8
    const-string v0, "if ( _returnToken==null ) continue tryAgain; // found SKIP token"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2295
    const-string v0, "_ttype = _returnToken.getType();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getTestLiterals()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2297
    invoke-direct {p0}, Lantlr/JavaCodeGenerator;->genLiteralsTest()V

    .line 2301
    :cond_9
    const-string v0, "_returnToken.setType(_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2302
    const-string v0, "return _returnToken;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2305
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2306
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2307
    const-string v0, "catch (RecognitionException e) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2308
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2309
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_b

    if-nez v9, :cond_a

    .line 2311
    const-string v0, "if ( !getCommitToPath() ) {consume(); continue tryAgain;}"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2314
    :cond_a
    const-string v0, "if ( !getCommitToPath() ) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2315
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2316
    const-string v0, "rewind(_m);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2318
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "try {m"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2319
    const-string v0, "catch(RecognitionException ee) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2320
    const-string v0, "\t// horrendous failure: error in filter rule"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2321
    const-string v0, "\treportError(ee);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2322
    const-string v0, "\tconsume();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2324
    const-string v0, "continue tryAgain;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2325
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2326
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2329
    :cond_b
    :goto_5
    invoke-virtual {v2}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2330
    const-string v0, "reportError(e);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2331
    const-string v0, "consume();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2335
    :cond_c
    const-string v0, "throw new TokenStreamRecognitionException(e);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2337
    :goto_6
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2338
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2341
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2342
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2343
    const-string v0, "catch (CharStreamException cse) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2344
    const-string v0, "\tif ( cse instanceof CharStreamIOException ) {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2345
    const-string v0, "\t\tthrow new TokenStreamIOException(((CharStreamIOException)cse).io);"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2347
    const-string v0, "\telse {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2353
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2354
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2357
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2358
    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2250
    :cond_d
    invoke-virtual {v2, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v10

    .line 2251
    iget-object v11, v10, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2253
    iget-object v10, v10, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    check-cast v10, Lantlr/RuleRefElement;

    .line 2254
    iget-object v10, v10, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-static {v10}, Lantlr/CodeGenerator;->decodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2255
    iget-object v11, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "public lexical rule "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v12, " is optional (can match \"nothing\")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public genRule(Lantlr/RuleSymbol;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 2379
    iput v3, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2381
    iget-boolean v4, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v5, ")"

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "genRule("

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2382
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2383
    iget-object v2, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "undefined rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    .line 2388
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v4

    .line 2390
    iput-object v4, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 2391
    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 2394
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2397
    iget-boolean v6, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 2398
    invoke-virtual {v4}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_0
    iput-boolean v8, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 2401
    invoke-virtual {v4}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v8

    iput-boolean v8, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 2404
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2405
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2409
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " final "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2412
    iget-object v8, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v9, " "

    if-eqz v8, :cond_4

    .line 2414
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/GrammarElement;->getLine()I

    move-result v11

    invoke-virtual {v4}, Lantlr/GrammarElement;->getColumn()I

    move-result v12

    invoke-virtual {v0, v10, v11, v12}, Lantlr/CodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    .line 2418
    :cond_4
    const-string v8, "void "

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2422
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2425
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2426
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 2427
    const-string v8, ","

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2431
    :cond_5
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const-string v10, ""

    if-eqz v8, :cond_6

    .line 2433
    invoke-virtual {v0, v10}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2434
    iget v8, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v8, v3

    iput v8, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2435
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2436
    iget v8, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v8, v3

    iput v8, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2437
    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2441
    :cond_6
    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2445
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, " throws "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2446
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    if-eqz v5, :cond_7

    .line 2447
    const-string v5, ", TokenStreamException"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_3

    .line 2449
    :cond_7
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_8

    .line 2450
    const-string v5, ", CharStreamException, TokenStreamException"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2453
    :cond_8
    :goto_3
    iget-object v5, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2454
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_9

    .line 2455
    iget-object v5, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v11, "user-defined throws spec not allowed (yet) for lexer rule "

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 2458
    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ", "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2462
    :cond_a
    :goto_4
    const-string v5, " {"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 2463
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, v3

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2466
    iget-object v5, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v8, ";"

    if-eqz v5, :cond_b

    .line 2467
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2470
    :cond_b
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2472
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->traceRules:Z

    const-string v11, "\",_t);"

    const-string v12, "\");"

    if-eqz v5, :cond_d

    .line 2473
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    const-string v13, "traceIn(\""

    if-eqz v5, :cond_c

    .line 2474
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2477
    :cond_c
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2481
    :cond_d
    :goto_5
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_f

    .line 2484
    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v13, "mEOF"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2485
    const-string v5, "_ttype = Token.EOF_TYPE;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2487
    :cond_e
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v13, "_ttype = "

    invoke-direct {v5, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2488
    :goto_6
    const-string v5, "int _saveIndex;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2498
    :cond_f
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    const-string v13, ",_ttype);"

    const-string v14, ",0);"

    if-eqz v5, :cond_11

    .line 2499
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    const-string v15, "fireEnterRule("

    if-eqz v5, :cond_10

    .line 2500
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2501
    :cond_10
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_11

    .line 2502
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2505
    :cond_11
    :goto_7
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v5, :cond_12

    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->traceRules:Z

    if-eqz v5, :cond_13

    .line 2506
    :cond_12
    const-string v5, "try { // debugging"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2507
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, v3

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2511
    :cond_13
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-eqz v5, :cond_14

    .line 2513
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v15, "_AST_in = ("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v15, ")_t;"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2515
    :cond_14
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->buildAST:Z

    if-eqz v5, :cond_15

    .line 2517
    const-string v5, "returnAST = null;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2520
    const-string v5, "ASTPair currentAST = new ASTPair();"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2522
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, "_AST = null;"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2525
    :cond_15
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 2526
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 2527
    invoke-virtual {v0, v10}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {v4, v10}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object v5

    if-nez v5, :cond_16

    .line 2533
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2534
    :cond_16
    const-string v9, "try {      // for error handling"

    invoke-virtual {v0, v9}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2535
    iget v9, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v9, v3

    iput v9, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2539
    :cond_17
    iget-object v9, v4, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ne v9, v3, :cond_1a

    .line 2541
    invoke-virtual {v4, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 2542
    iget-object v9, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v9, :cond_18

    .line 2544
    iget-object v15, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget v15, v15, Lantlr/GrammarElement;->line:I

    invoke-virtual {v0, v9, v15}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 2545
    :cond_18
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_19

    .line 2546
    iget-object v9, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v15, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v15}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v3}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    move/from16 v16, v6

    iget-object v6, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v6}, Lantlr/GrammarElement;->getColumn()I

    move-result v6

    move-object/from16 v17, v10

    const-string v10, "Syntactic predicate ignored for single alternative"

    invoke-virtual {v9, v10, v15, v3, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_8

    :cond_19
    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 2553
    :goto_8
    invoke-virtual {v0, v7, v4}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    goto :goto_9

    :cond_1a
    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 2557
    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v4}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 2559
    invoke-virtual {v0, v4, v7}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object v3

    .line 2560
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 2564
    :goto_9
    const-string v3, "}"

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2566
    :cond_1b
    iget v6, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2567
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_1c
    if-eqz v5, :cond_1d

    .line 2572
    invoke-direct {v0, v5}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    goto/16 :goto_c

    .line 2574
    :cond_1d
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2576
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "catch ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ex) {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2577
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2579
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v5, :cond_1e

    .line 2580
    const-string v5, "if (inputState.guessing==0) {"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2581
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, v6

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2583
    :cond_1e
    const-string v5, "reportError(ex);"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2584
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-nez v5, :cond_1f

    .line 2586
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v6, v4, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v7, 0x1

    invoke-interface {v5, v7, v6}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object v5

    .line 2587
    iget-object v5, v5, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    .line 2588
    const-string v6, "consume();"

    invoke-virtual {v0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2589
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "consumeUntil("

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 2593
    :cond_1f
    const-string v5, "if (_t!=null) {_t = _t.getNextSibling();}"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2595
    :goto_a
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v5, :cond_20

    .line 2596
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2598
    const-string v5, "} else {"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2599
    const-string v5, "  throw ex;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_20
    const/4 v6, 0x1

    .line 2603
    :goto_b
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v5, v6

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2604
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2608
    :cond_21
    :goto_c
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->buildAST:Z

    if-eqz v5, :cond_22

    .line 2609
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "returnAST = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "_AST;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2613
    :cond_22
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-eqz v5, :cond_23

    .line 2614
    const-string v5, "_retTree = _t;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2618
    :cond_23
    invoke-virtual {v4}, Lantlr/RuleBlock;->getTestLiterals()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2619
    iget-object v5, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v6, "protected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2620
    invoke-direct/range {p0 .. p0}, Lantlr/JavaCodeGenerator;->genLiteralsTestForPartialToken()V

    goto :goto_d

    .line 2623
    :cond_24
    invoke-direct/range {p0 .. p0}, Lantlr/JavaCodeGenerator;->genLiteralsTest()V

    .line 2628
    :cond_25
    :goto_d
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_26

    .line 2629
    const-string v5, "if ( _createToken && _token==null && _ttype!=Token.SKIP ) {"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2630
    const-string v5, "\t_token = makeToken(_ttype);"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2631
    const-string v5, "\t_token.setText(new String(text.getBuffer(), _begin, text.length()-_begin));"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2633
    const-string v5, "_returnToken = _token;"

    invoke-virtual {v0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2637
    :cond_26
    iget-object v5, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 2638
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/GrammarElement;->getLine()I

    move-result v7

    invoke-virtual {v4}, Lantlr/GrammarElement;->getColumn()I

    move-result v4

    invoke-virtual {v0, v6, v7, v4}, Lantlr/CodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2641
    :cond_27
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v4, :cond_29

    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->traceRules:Z

    if-eqz v4, :cond_28

    goto :goto_e

    :cond_28
    const/4 v2, 0x1

    goto/16 :goto_11

    .line 2642
    :cond_29
    :goto_e
    iget v4, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2643
    const-string v4, "} finally { // debugging"

    invoke-virtual {v0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2644
    iget v4, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2647
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_2b

    .line 2648
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/ParserGrammar;

    const-string v5, "fireExitRule("

    if-eqz v4, :cond_2a

    .line 2649
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2650
    :cond_2a
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    if-eqz v4, :cond_2b

    .line 2651
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2653
    :cond_2b
    :goto_f
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->traceRules:Z

    if-eqz v2, :cond_2d

    .line 2654
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    const-string v4, "traceOut(\""

    if-eqz v2, :cond_2c

    .line 2655
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 2658
    :cond_2c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2662
    :cond_2d
    :goto_10
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2663
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2666
    :goto_11
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2667
    invoke-virtual {v0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 2668
    invoke-virtual {v0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    move/from16 v1, v16

    .line 2671
    iput-boolean v1, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    return-void
.end method

.method protected genSemPred(Ljava/lang/String;I)V
    .locals 2

    .line 2735
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 2736
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, p1, p2, v1, v0}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 2738
    iget-object p2, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {p2, p1}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2742
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 2743
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2745
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "if (!("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2746
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "  throw new SemanticException(\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSemPredMap()V
    .locals 3

    .line 2753
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 2754
    const-string v1, "private String _semPredNames[] = {"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2755
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2757
    const-string v0, "};"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2756
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V
    .locals 5

    .line 2761
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v1, ")"

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "gen=>("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2764
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "boolean synPredMatched"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "if ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ") {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2767
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2770
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/TreeWalkerGrammar;

    if-eqz p2, :cond_1

    .line 2771
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "AST __t"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " = _t;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2774
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "int _m"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " = mark();"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2778
    :goto_0
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "synPredMatched"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v3, " = true;"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2779
    const-string p2, "inputState.guessing++;"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2782
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/ParserGrammar;

    if-nez p2, :cond_2

    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/LexerGrammar;

    if-eqz p2, :cond_3

    .line 2784
    :cond_2
    const-string p2, "fireSyntacticPredicateStarted();"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2787
    :cond_3
    iget p2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    .line 2788
    const-string p2, "try {"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2789
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2790
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 2791
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2793
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2794
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "catch ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " pe) {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2795
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2796
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2798
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2799
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_4

    .line 2803
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "_t = __t"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2806
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "rewind(_m"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2809
    :goto_1
    const-string v0, "inputState.guessing--;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2812
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_5

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    .line 2814
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "if (synPredMatched"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2815
    const-string v0, "  fireSyntacticPredicateSucceeded();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2816
    const-string v0, "else"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2817
    const-string v0, "  fireSyntacticPredicateFailed();"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2820
    :cond_6
    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    .line 2821
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2824
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2827
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "if ( synPredMatched"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " ) {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenASTNodeMap()V
    .locals 9

    .line 2875
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2876
    const-string v0, "protected void buildTokenTypeASTClassMap() {"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2879
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2883
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2884
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    if-nez v3, :cond_0

    .line 2902
    const-string v0, "tokenTypeToASTClassMap=null;"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2904
    :cond_0
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2905
    const-string v0, "};"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2885
    :cond_1
    invoke-virtual {v0, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2887
    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v6, v5}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2888
    invoke-virtual {v6}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_2

    .line 2892
    const-string v4, "tokenTypeToASTClassMap = new Hashtable();"

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    move v4, v1

    .line 2895
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "tokenTypeToASTClassMap.put(new Integer("

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "), "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v6}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".class);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public genTokenStrings()V
    .locals 7

    .line 2841
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2842
    const-string v1, "public static final String[] _tokenNames = {"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2843
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2847
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v1

    const/4 v2, 0x0

    .line 2848
    :goto_0
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 2867
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2868
    const-string v0, "};"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2849
    :cond_0
    invoke-virtual {v1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2850
    const-string v4, "<"

    if-nez v3, :cond_1

    .line 2851
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2853
    :cond_1
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2854
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4, v3}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2855
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2856
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2859
    :cond_2
    iget-object v4, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v4, v3}, Lantlr/CharFormatter;->literalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2861
    const-string v3, ","

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 2863
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2913
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2915
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2918
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 2920
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2924
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public interface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2925
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2928
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    .line 2931
    const-string v1, "int EOF = 1;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2932
    const-string v1, "int NULL_TREE_LOOKAHEAD = 3;"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2934
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2966
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2967
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2970
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 2971
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2972
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    return-void

    .line 2935
    :cond_0
    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2937
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ";"

    const-string v5, "int "

    const-string v6, " = "

    if-eqz v3, :cond_4

    .line 2939
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    check-cast v3, Lantlr/StringLiteralSymbol;

    if-nez v3, :cond_1

    .line 2941
    iget-object v3, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "String literal "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " not in symbol table"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2943
    :cond_1
    iget-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2944
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2947
    :cond_2
    invoke-direct {p0, v2}, Lantlr/JavaCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2950
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 2952
    iput-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    goto :goto_1

    .line 2955
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "// "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2959
    :cond_4
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2960
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 2999
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3001
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ",\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3006
    :cond_0
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 5

    .line 2979
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    const-string p1, ""

    return-object p1

    .line 2982
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2983
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")astFactory.make( (new ASTArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 2986
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, ")"

    if-lt v1, v2, :cond_1

    .line 2989
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2990
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2987
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, ".add("

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getASTCreateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 3020
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3024
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    if-lt v2, v4, :cond_6

    const/4 v2, 0x2

    .line 3030
    const-string v4, ")"

    const-string v6, ")astFactory.create("

    const-string v7, "("

    if-ge v3, v2, :cond_5

    .line 3031
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3032
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    if-lez v3, :cond_1

    .line 3035
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 3038
    :goto_1
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3040
    invoke-virtual {v1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_2

    .line 3045
    const-string v0, ",\"\""

    :cond_2
    if-eqz v1, :cond_3

    .line 3048
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ",\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3054
    :cond_3
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    const-string v1, "AST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3055
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "astFactory.create("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3057
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3061
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3025
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;
    .locals 2

    .line 3096
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3100
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    if-nez p2, :cond_1

    .line 3106
    const-string p1, "( true )"

    return-object p1

    .line 3109
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;
    .locals 4

    .line 3065
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3068
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-le v1, p2, :cond_0

    .line 3086
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3088
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3070
    :cond_0
    aget-object v3, p1, v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    if-nez v2, :cond_1

    .line 3072
    const-string v2, ") && ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3079
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3080
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3083
    :cond_2
    invoke-virtual {p0, v1, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;
    .locals 4

    .line 3122
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v0

    .line 3125
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    .line 3126
    invoke-static {v1}, Lantlr/CodeGenerator;->elementsAreRange([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3127
    invoke-virtual {p0, p1, v1}, Lantlr/JavaCodeGenerator;->getRangeExpression(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3132
    :cond_0
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p1

    if-nez p1, :cond_1

    .line 3134
    const-string p1, "true"

    return-object p1

    .line 3137
    :cond_1
    iget v2, p0, Lantlr/CodeGenerator;->bitsetTestThreshold:I

    if-lt p1, v2, :cond_2

    .line 3138
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    .line 3139
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".member("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3143
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 3144
    :goto_0
    array-length v2, v1

    if-lt p2, v2, :cond_3

    .line 3154
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3146
    :cond_3
    aget v2, v1, p2

    invoke-direct {p0, v2}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_4

    .line 3149
    const-string v3, "||"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3150
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3151
    const-string v3, "=="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3152
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getRangeExpression(I[I)Ljava/lang/String;
    .locals 3

    .line 3163
    invoke-static {p2}, Lantlr/CodeGenerator;->elementsAreRange([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3164
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "getRangeExpression called with non-range"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3166
    aget v0, p2, v0

    .line 3167
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget p2, p2, v1

    .line 3168
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " <= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p2}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected lookaheadIsEmpty(Lantlr/Alternative;I)Z
    .locals 4

    .line 3213
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3215
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    if-le v2, p2, :cond_1

    goto :goto_1

    .line 3218
    :cond_1
    iget-object v3, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v2

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 3219
    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 6

    .line 3262
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    if-nez v0, :cond_0

    return-object p1

    .line 3266
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3267
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 3271
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_2

    .line 3273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 3280
    :goto_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v4, "_AST"

    if-lt v2, v0, :cond_9

    .line 3290
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3292
    sget-object p2, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_3

    .line 3294
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v2

    .line 3299
    :cond_3
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3302
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v2

    :cond_4
    if-eqz v3, :cond_5

    .line 3307
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 3313
    :cond_6
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3314
    new-instance v0, Ljava/lang/StringBuffer;

    if-eqz v3, :cond_7

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "_AST_in"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_8

    if-nez v3, :cond_8

    .line 3317
    iput-object p1, p2, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    :cond_8
    return-object p1

    .line 3281
    :cond_9
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/AlternativeElement;

    .line 3282
    invoke-virtual {v0}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    goto :goto_2

    .line 3283
    :cond_a
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 3

    .line 3373
    const-string v0, "Error reading action:"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3377
    :cond_0
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    if-nez v1, :cond_1

    return-object p1

    .line 3381
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-nez v1, :cond_4

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-nez v1, :cond_3

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/ParserGrammar;

    if-eqz v1, :cond_5

    :cond_3
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 3387
    :cond_4
    new-instance v1, Lantlr/actions/java/ActionLexer;

    invoke-direct {v1, p1, p3, p0, p4}, Lantlr/actions/java/ActionLexer;-><init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V

    .line 3393
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->setLineOffset(I)V

    .line 3394
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lantlr/CharScanner;->setFilename(Ljava/lang/String;)V

    .line 3395
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->setTool(Lantlr/Tool;)V

    const/4 p2, 0x1

    .line 3398
    :try_start_0
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->mACTION(Z)V

    .line 3399
    invoke-virtual {v1}, Lantlr/CharScanner;->getTokenObject()Lantlr/Token;

    move-result-object p2

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    .line 3412
    :catch_0
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    .line 3408
    :catch_1
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    :catch_2
    move-exception p2

    .line 3404
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->reportError(Lantlr/RecognitionException;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setupOutput(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ".java"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method
