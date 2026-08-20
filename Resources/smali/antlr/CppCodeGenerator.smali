.class public Lantlr/CppCodeGenerator;
.super Lantlr/CodeGenerator;
.source "CppCodeGenerator.java"


# static fields
.field protected static final NONUNIQUE:Ljava/lang/String;

.field public static final caseSizeThreshold:I = 0x7f

.field private static nameSpace:Lantlr/NameSpace; = null

.field private static namespaceAntlr:Ljava/lang/String; = null

.field private static namespaceStd:Ljava/lang/String; = null

.field private static final postIncludeCpp:Ljava/lang/String; = "post_include_cpp"

.field private static final postIncludeHpp:Ljava/lang/String; = "post_include_hpp"

.field private static final preIncludeCpp:Ljava/lang/String; = "pre_include_cpp"

.field private static final preIncludeHpp:Ljava/lang/String; = "pre_include_hpp"


# instance fields
.field private astTypes:Lantlr/collections/impl/Vector;

.field astVarNumber:I

.field commonExtraArgs:Ljava/lang/String;

.field commonExtraParams:Ljava/lang/String;

.field commonLocalVars:Ljava/lang/String;

.field currentASTResult:Ljava/lang/String;

.field currentRule:Lantlr/RuleBlock;

.field declaredASTVariables:Ljava/util/HashSet;

.field exceptionThrown:Ljava/lang/String;

.field protected genAST:Z

.field protected genHashLines:Z

.field labeledElementASTInit:Ljava/lang/String;

.field labeledElementASTType:Ljava/lang/String;

.field labeledElementInit:Ljava/lang/String;

.field labeledElementType:Ljava/lang/String;

.field lt1Value:Ljava/lang/String;

.field protected noConstructors:Z

.field protected outputFile:Ljava/lang/String;

.field protected outputLine:I

.field protected saveText:Z

.field private semPreds:Lantlr/collections/impl/Vector;

.field protected syntacticPredLevel:I

.field throwNoViable:Ljava/lang/String;

.field treeVariableMap:Ljava/util/Hashtable;

.field usingCustomAST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    .line 82
    const-string v0, "ANTLR_USE_NAMESPACE(std)"

    sput-object v0, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    .line 83
    const-string v0, "ANTLR_USE_NAMESPACE(antlr)"

    sput-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    .line 28
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 31
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    .line 36
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    .line 44
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    .line 70
    iput v1, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    .line 97
    new-instance v0, Lantlr/CppCharFormatter;

    invoke-direct {v0}, Lantlr/CppCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method private GenRuleInvocation(Lantlr/RuleRefElement;)V
    .locals 5

    .line 3547
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3550
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const-string v1, ","

    if-eqz v0, :cond_2

    .line 3552
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3553
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 3556
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3558
    :goto_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3559
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3564
    :cond_2
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3565
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3566
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3570
    :cond_3
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 3571
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3574
    new-instance v1, Lantlr/ActionTransInfo;

    invoke-direct {v1}, Lantlr/ActionTransInfo;-><init>()V

    .line 3577
    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    iget v3, p1, Lantlr/GrammarElement;->line:I

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v2, v3, v4, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3579
    iget-boolean v3, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3581
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

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 3584
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3587
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 3589
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

    .line 3602
    :cond_6
    const-string p1, ");"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3605
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    .line 3606
    const-string p1, "_t = _retTree;"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4337
    const-string v0, "\""

    invoke-static {p1, v0, v0}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V
    .locals 1

    .line 1029
    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_2

    .line 1031
    :cond_0
    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    if-eqz v0, :cond_1

    .line 1032
    const-string v0, "else {"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1035
    :cond_1
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1037
    :goto_0
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1038
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1039
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1040
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1043
    :cond_2
    iget-object p2, p1, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1044
    iget-object p1, p1, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private genElementAST(Lantlr/AlternativeElement;)V
    .locals 13

    .line 2068
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, " "

    const-string v2, "_AST"

    const-string v3, "tmp"

    const-string v4, "_in = "

    const-string v5, ";"

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    .line 2074
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2076
    iget-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2078
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2079
    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    add-int/2addr v3, v6

    iput v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    .line 2081
    invoke-direct {p0, p1, v2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2083
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2088
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_17

    .line 2090
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v8

    .line 2098
    :goto_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v9

    if-eq v9, v7, :cond_4

    instance-of v7, p1, Lantlr/TokenRefElement;

    if-eqz v7, :cond_4

    move v0, v6

    .line 2102
    :cond_4
    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    move v8, v6

    .line 2109
    :cond_5
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2112
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 2113
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2118
    :cond_6
    iget-object v7, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2120
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2121
    iget v9, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    add-int/2addr v9, v6

    iput v9, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    :goto_1
    if-eqz v0, :cond_9

    .line 2127
    instance-of v9, p1, Lantlr/GrammarAtom;

    if-eqz v9, :cond_8

    .line 2129
    move-object v9, p1

    check-cast v9, Lantlr/GrammarAtom;

    .line 2130
    invoke-virtual {v9}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 2132
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "Ref"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2137
    :cond_7
    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2143
    :cond_8
    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_9
    :goto_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2152
    invoke-direct {p0, p1, v2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2153
    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_a

    .line 2156
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v7, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_b

    .line 2161
    const-string v1, "if ( inputState->guessing == 0 ) {"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2162
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v6

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2167
    :cond_b
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v7, " = "

    if-eqz v1, :cond_d

    .line 2169
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_c

    .line 2171
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v9, p1

    check-cast v9, Lantlr/GrammarAtom;

    invoke-virtual {p0, v9, v3}, Lantlr/CppCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2176
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2182
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    .line 2184
    iget-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2185
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_e

    .line 2187
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lantlr/GrammarAtom;

    invoke-virtual {p0, v3, v0}, Lantlr/CppCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2192
    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2196
    :goto_4
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_f

    .line 2199
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2203
    :cond_f
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v0, :cond_16

    .line 2205
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const-string v1, ");"

    const-string v3, "));"

    const-string v4, "RefAST>("

    if-eq v0, v6, :cond_13

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    goto/16 :goto_7

    .line 2217
    :cond_10
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-nez v0, :cond_12

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_11

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_5

    .line 2222
    :cond_11
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "astFactory->makeASTRoot(currentAST, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2220
    :cond_12
    :goto_5
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "astFactory->makeASTRoot(currentAST, static_cast<"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2208
    :cond_13
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-nez v0, :cond_15

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_14

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_6

    .line 2213
    :cond_14
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "astFactory->addASTChild(currentAST, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2211
    :cond_15
    :goto_6
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "astFactory->addASTChild(currentAST, static_cast<"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_16
    :goto_7
    if-eqz v8, :cond_17

    .line 2230
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v6

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2231
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private genErrorCatchForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2239
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2240
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2241
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2242
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2246
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2248
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2250
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2251
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2252
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    :cond_3
    return-void
.end method

.method private genErrorHandler(Lantlr/ExceptionSpec;)V
    .locals 5

    const/4 v0, 0x0

    .line 2259
    :goto_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2261
    :cond_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/ExceptionHandler;

    .line 2263
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

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2264
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2265
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_1

    .line 2266
    const-string v2, "if (inputState->guessing==0) {"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2267
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2271
    :cond_1
    new-instance v2, Lantlr/ActionTransInfo;

    invoke-direct {v2}, Lantlr/ActionTransInfo;-><init>()V

    .line 2272
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/Token;)V

    .line 2273
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v1

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v1, v4, v2}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2280
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const-string v2, "}"

    if-eqz v1, :cond_2

    .line 2282
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2283
    const-string v1, "} else {"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2284
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2286
    const-string v1, "throw;"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2287
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2288
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2291
    :cond_2
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2292
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private genErrorTryForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2297
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2298
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2299
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2300
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2302
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2304
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2306
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2308
    const-string p1, "try { // for error handling"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2309
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    :cond_3
    return-void
.end method

.method private genLiteralsTest()V
    .locals 1

    .line 2878
    const-string v0, "_ttype = testLiteralsTable(_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genLiteralsTestForPartialToken()V
    .locals 1

    .line 2881
    const-string v0, "_ttype = testLiteralsTable(text.substr(_begin, text.length()-_begin),_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getValueString(I)Ljava/lang/String;
    .locals 3

    .line 4065
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 4066
    iget-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4070
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->getTokenSymbolAt(I)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4072
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4075
    :cond_1
    invoke-virtual {v0}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4076
    instance-of v2, v0, Lantlr/StringLiteralSymbol;

    if-eqz v2, :cond_4

    .line 4080
    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 4081
    invoke-virtual {v0}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4086
    :cond_2
    invoke-direct {p0, v1}, Lantlr/CppCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4088
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 4093
    :cond_4
    const-string p1, "EOF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4094
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "Token::EOF_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private lookaheadString(I)Ljava/lang/String;
    .locals 2

    .line 4116
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    .line 4117
    const-string p1, "_t->getType()"

    return-object p1

    .line 4119
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

    .line 4128
    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    .line 4129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_1

    .line 4136
    sget-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    if-eqz p1, :cond_0

    .line 4137
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4130
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

    .line 4134
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

    .line 4251
    instance-of v0, p1, Lantlr/TreeElement;

    if-eqz v0, :cond_0

    .line 4252
    check-cast p1, Lantlr/TreeElement;

    iget-object p1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, p1, p2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void

    .line 4260
    :cond_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4261
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_1

    .line 4263
    check-cast p1, Lantlr/TokenRefElement;

    iget-object p1, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    goto :goto_0

    .line 4265
    :cond_1
    instance-of v0, p1, Lantlr/RuleRefElement;

    if-eqz v0, :cond_2

    .line 4267
    check-cast p1, Lantlr/RuleRefElement;

    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 4272
    iget-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4274
    iget-object p2, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4275
    iget-object p2, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    sget-object v0, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4278
    :cond_3
    iget-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private setupGrammarParameters(Lantlr/Grammar;)V
    .locals 13

    .line 4345
    instance-of v0, p1, Lantlr/ParserGrammar;

    const-string v1, "\""

    if-nez v0, :cond_0

    instance-of v2, p1, Lantlr/LexerGrammar;

    if-nez v2, :cond_0

    instance-of v2, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_b

    .line 4355
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    if-eqz v2, :cond_1

    .line 4356
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    sput-object v2, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    .line 4358
    :cond_1
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4359
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    .line 4361
    :cond_2
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 4362
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    .line 4364
    :cond_3
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-boolean v2, v2, Lantlr/Tool;->genHashLines:Z

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    .line 4368
    const-string v2, "namespace"

    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4369
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4371
    new-instance v3, Lantlr/NameSpace;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lantlr/NameSpace;-><init>(Ljava/lang/String;)V

    sput-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    .line 4374
    :cond_4
    const-string v2, "namespaceAntlr"

    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "::"

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    .line 4375
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4377
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4379
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4381
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4382
    :cond_5
    sput-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    .line 4386
    :cond_6
    const-string v2, "namespaceStd"

    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4387
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4389
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4391
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4393
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4394
    :cond_7
    sput-object v2, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    .line 4398
    :cond_8
    const-string v2, "genHashLines"

    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "true"

    if-eqz v3, :cond_9

    .line 4399
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4401
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4402
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    .line 4405
    :cond_9
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-boolean v2, v2, Lantlr/Tool;->noConstructors:Z

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    .line 4406
    const-string v2, "noConstructors"

    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4407
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 4408
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4409
    iget-object v3, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v5}, Lantlr/Tool;->getGrammarFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v6

    invoke-virtual {v2}, Lantlr/Token;->getColumn()I

    move-result v7

    const-string v8, "noConstructors option must be true or false"

    invoke-virtual {v3, v8, v5, v6, v7}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4410
    :cond_a
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    .line 4413
    :cond_b
    const-string v2, "nullAST)"

    const-string v3, ">("

    const-string v4, "static_cast<"

    const/4 v5, 0x1

    const-string v6, "RecognitionException"

    const-string v7, "nullAST"

    const-string v8, "throw "

    const-string v9, "RefAST"

    const-string v10, ""

    const-string v11, "ASTLabelType"

    if-eqz v0, :cond_d

    .line 4414
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v12, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4415
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4416
    invoke-virtual {p1, v11}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4417
    invoke-virtual {p1, v11}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4419
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4421
    iput-boolean v5, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 4422
    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4423
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4427
    :cond_c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "RefToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4428
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "nullToken"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4429
    iput-object v10, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 4430
    iput-object v10, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4431
    iput-object v10, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 4432
    const-string p1, "LT(1)"

    iput-object p1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4433
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 4434
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "NoViableAltException(LT(1), getFilename());"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 4436
    :cond_d
    instance-of v0, p1, Lantlr/LexerGrammar;

    if-eqz v0, :cond_e

    .line 4437
    const-string p1, "char "

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4438
    const-string p1, "\'\\0\'"

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4439
    iput-object v10, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 4440
    const-string p1, "bool _createToken"

    iput-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4441
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "int _ttype; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "RefToken _token; int _begin=text.length();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 4442
    const-string p1, "LA(1)"

    iput-object p1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4443
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 4444
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 4446
    :cond_e
    instance-of v0, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_11

    .line 4447
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v12, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4448
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v12, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4449
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4450
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4451
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v7, "RefAST _t"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4452
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v7, "NoViableAltException(_t);"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    .line 4453
    const-string v0, "_t"

    iput-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4454
    invoke-virtual {p1, v11}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4455
    invoke-virtual {p1, v11}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 4457
    invoke-virtual {v7}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4459
    iput-boolean v5, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 4460
    iput-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4461
    iput-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4462
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4463
    iput-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4464
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " _t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4465
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "NoViableAltException(static_cast<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "RefAST>(_t));"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    .line 4466
    iput-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4470
    :cond_f
    invoke-virtual {p1, v11}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 4471
    new-instance v1, Lantlr/Token;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v11, v1}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    .line 4473
    :cond_10
    iput-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 4474
    iput-object v10, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 4475
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    goto :goto_0

    .line 4478
    :cond_11
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Unknown grammar type"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static suitableForCaseExpression(Lantlr/Alternative;)Z
    .locals 2

    .line 2056
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

.method private textOrChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4483
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4485
    iget-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-static {p1}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected _print(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 133
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 134
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _printAction(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 146
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 147
    invoke-super {p0, p1}, Lantlr/CodeGenerator;->_printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _println(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 183
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected addSemPred(Ljava/lang/String;)I
    .locals 1

    .line 105
    iget-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected countLines(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public exitIfError()V
    .locals 2

    .line 110
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Tool;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Exiting due to errors."

    invoke-virtual {v0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen()V
    .locals 3

    .line 232
    :try_start_0
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 233
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 247
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 249
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    .line 255
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->genTokenInterchange(Lantlr/TokenManager;)V

    .line 257
    :cond_1
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 234
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 236
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 237
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 238
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 240
    invoke-direct {p0, v1}, Lantlr/CppCodeGenerator;->setupGrammarParameters(Lantlr/Grammar;)V

    .line 241
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 242
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 4

    .line 268
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

    .line 269
    :cond_0
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    iget p1, p1, Lantlr/GrammarElement;->line:I

    invoke-virtual {p0, v0, p1}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "if ( inputState->guessing==0 ) {"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 278
    :cond_2
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 279
    iget-object v1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v1, v2, v3, v0}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 288
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(currentAST.root);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 292
    :cond_3
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 293
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 296
    iget-boolean p1, v0, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-eqz p1, :cond_4

    .line 298
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 301
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "if ( "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "!="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, " &&"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 302
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 303
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "->getFirstChild() != "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, " )"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "  currentAST.child = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "->getFirstChild();"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 305
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 306
    const-string p1, "else"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 307
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 308
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "currentAST.child = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 309
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 310
    const-string p1, "currentAST.advanceChildToEnd();"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 313
    :cond_4
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p1, :cond_5

    .line 314
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 315
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 324
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

    .line 325
    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 327
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 330
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 335
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v1, 0x1

    .line 337
    invoke-virtual {p0, p1, v1}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 338
    iget-object v1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 340
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 343
    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 3

    .line 351
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

    .line 357
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

    .line 359
    :cond_0
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 365
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 366
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 3

    .line 372
    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

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

    .line 381
    const-string v1, "_saveIndex=text.length();"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 383
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "matchRange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->textOrChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->textOrChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 386
    const-string p1, "text.setLength(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-boolean v0, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 395
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/LexerGrammar;)V

    .line 400
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/LexerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 10

    .line 406
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

    .line 409
    :cond_0
    const-string v0, "{ // ( ... )+"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 411
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
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

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_cnt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
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

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 422
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_loop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    :goto_1
    const-string v2, "for (;;) {"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 426
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 429
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 432
    iget-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 434
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 437
    :cond_3
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    .line 450
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    .line 452
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

    .line 457
    iget v4, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    goto :goto_2

    .line 459
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

    .line 467
    :goto_3
    const-string v7, "if ( "

    if-eqz v5, :cond_7

    .line 468
    iget-boolean v5, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v5, :cond_6

    .line 469
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

    .line 472
    :cond_6
    iget-object v5, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v5, v4}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v4

    .line 475
    const-string v5, "// nongreedy exit test"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 476
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ">=1 && "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ") goto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 479
    :cond_7
    invoke-virtual {p0, p1, v6}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 480
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">=1 ) { goto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "; } else {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 485
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "++;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 486
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 487
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 488
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ":;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 489
    const-string p1, "}  // ( ... )+"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 492
    iput-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-boolean v0, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 503
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating parser"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/ParserGrammar;)V

    .line 508
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/ParserGrammar;)V

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 6

    .line 515
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

    .line 516
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 517
    const-string v1, "Rule \'"

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 523
    :cond_1
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_2

    .line 526
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

    .line 530
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 534
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_3

    .line 538
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = (_t == ASTNULL) ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 543
    :cond_3
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 545
    :cond_4
    const-string v2, "_saveIndex = text.length();"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 549
    :cond_5
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 550
    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 553
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 555
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

    .line 557
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_7
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-nez v2, :cond_8

    iget v2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_8

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 562
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

    .line 567
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->GenRuleInvocation(Lantlr/RuleRefElement;)V

    .line 570
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 571
    :cond_9
    const-string v0, "text.erase(_saveIndex);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 575
    :cond_a
    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_15

    .line 577
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_d

    :cond_c
    move v0, v1

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_e

    .line 586
    const-string v2, "if (inputState->guessing==0) {"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 587
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 590
    :cond_e
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 593
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_AST = returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 596
    :cond_f
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v2, :cond_13

    .line 598
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v2

    if-eq v2, v1, :cond_11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    goto :goto_2

    .line 609
    :cond_10
    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v3, "Internal: encountered ^ after rule reference"

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 601
    :cond_11
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_12

    .line 602
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "astFactory->addASTChild(currentAST, static_cast<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "RefAST>(returnAST));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 604
    :cond_12
    const-string v2, "astFactory->addASTChild( currentAST, returnAST );"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 617
    :cond_13
    :goto_2
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 619
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=_returnToken;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_14
    if-eqz v0, :cond_15

    .line 624
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 625
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 628
    :cond_15
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void

    .line 520
    :cond_16
    :goto_3
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

    .line 634
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

    .line 637
    :cond_0
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_1

    .line 638
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 642
    :cond_1
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 645
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 649
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 651
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 654
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    .line 655
    const-string p1, "_t = _t->getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 662
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 663
    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 671
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 3

    .line 678
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

    .line 679
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 682
    :cond_1
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 684
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_2

    .line 685
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 689
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 691
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 692
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    .line 695
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    .line 696
    const-string p1, "_t = _t->getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 6

    .line 701
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " __t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 704
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = (_t == ASTNULL) ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 709
    :cond_0
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 710
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

    .line 712
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/AlternativeElement;->setAutoGenType(I)V

    .line 714
    :cond_1
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 715
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

    .line 717
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/AlternativeElement;->setAutoGenType(I)V

    .line 721
    :cond_2
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 722
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const-string v1, ";"

    if-eqz v0, :cond_3

    .line 724
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "ASTPair __currentAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = currentAST;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 726
    const-string v0, "currentAST.root = currentAST.child;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "currentAST.child = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 731
    :cond_3
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    .line 732
    const-string v0, "if ( _t == ASTNULL ) throw MismatchedTokenException();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_4
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 738
    :goto_0
    const-string v0, "_t = _t->getFirstChild();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 741
    :goto_1
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 750
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_5

    .line 753
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 756
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 758
    const-string p1, "_t = _t->getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 742
    :cond_6
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 743
    iget-object v2, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_2
    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 745
    :cond_7
    invoke-virtual {v2}, Lantlr/GrammarElement;->generate()V

    .line 746
    iget-object v2, v2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_2
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 763
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating tree-walker"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 767
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/TreeWalkerGrammar;)V

    .line 768
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/TreeWalkerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 775
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 780
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 782
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 783
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "if ( _t == "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " ) throw "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "MismatchedTokenException();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    .line 786
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 788
    :cond_2
    const-string v0, "_saveIndex = text.length();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 790
    :cond_3
    const-string v0, "matchNot(EOF/*_CHAR*/);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 793
    :cond_4
    const-string p1, "text.erase(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "matchNot("

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 801
    :cond_6
    :goto_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    .line 802
    const-string p1, "_t = _t->getNextSibling();"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 9

    .line 809
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

    .line 810
    :cond_0
    const-string v0, "{ // ( ... )*"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 813
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 817
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_loop"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_0
    const-string v1, "for (;;) {"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 820
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 823
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 826
    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 827
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 828
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 831
    :cond_2
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    .line 844
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    .line 846
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

    .line 851
    iget v3, p1, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    goto :goto_1

    .line 853
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

    .line 858
    :goto_2
    const-string v6, ";"

    if-eqz v4, :cond_6

    .line 859
    iget-boolean v4, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v4, :cond_5

    .line 860
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

    .line 863
    :cond_5
    iget-object v4, p1, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v4, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v3

    .line 866
    const-string v4, "// nongreedy exit test"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 867
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "if ("

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") goto "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 870
    :cond_6
    invoke-virtual {p0, p1, v5}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 871
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "goto "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 873
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 874
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 875
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ":;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 876
    const-string p1, "} // ( ... )*"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 879
    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;)V
    .locals 1

    .line 2853
    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 2857
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2862
    iget-object v0, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2865
    :cond_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 2867
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2869
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "static_cast<Ref"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2872
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, "_AST = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2875
    iget-object p2, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V
    .locals 8

    .line 888
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 891
    iget-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v3, :cond_1

    .line 892
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 895
    iget-object v1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 896
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 899
    iget-object v4, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    .line 900
    const-string v4, "try {      // for error handling"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 901
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 904
    :cond_2
    iget-object v4, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 905
    :goto_1
    instance-of v5, v4, Lantlr/BlockEndElement;

    if-eqz v5, :cond_7

    .line 910
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v4, :cond_5

    .line 912
    instance-of v4, p2, Lantlr/RuleBlock;

    if-eqz v4, :cond_4

    .line 915
    check-cast p2, Lantlr/RuleBlock;

    .line 916
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v4, :cond_3

    .line 917
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, "_AST = static_cast<"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v4, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, ">(currentAST.root);"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 919
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v4, "_AST = currentAST.root;"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 921
    :cond_4
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 924
    iget-object v4, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result p2

    const-string v7, "Labeled subrules are not implemented"

    invoke-virtual {v4, v7, v5, v6, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 928
    :cond_5
    :goto_2
    iget-object p2, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz p2, :cond_6

    .line 931
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p2, v2

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 932
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 933
    iget-object p1, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    .line 936
    :cond_6
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 937
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 939
    iput-object v1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    return-void

    .line 906
    :cond_7
    invoke-virtual {v4}, Lantlr/GrammarElement;->generate()V

    .line 907
    iget-object v4, v4, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto/16 :goto_1
.end method

.method protected genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V
    .locals 9

    .line 959
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    .line 961
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 963
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-void

    .line 965
    :cond_0
    invoke-virtual {p1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/collections/impl/BitSet;

    .line 967
    invoke-virtual {v3, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 970
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "const unsigned long "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_data_[] = { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->toStringOfHalfWords()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " };"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 978
    const-string v4, "// "

    move v5, v1

    move-object v6, v4

    :goto_1
    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    if-eq v6, v4, :cond_1

    .line 995
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 998
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "const "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v5, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "BitSet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_data_,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 980
    :cond_2
    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 982
    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    const-string v8, " "

    if-eqz v7, :cond_3

    .line 983
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7, v5}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 985
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0, v5}, Lantlr/TokenManager;->getTokenStringAt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 987
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x46

    if-le v7, v8, :cond_4

    .line 989
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object v6, v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method protected genBitsetsHeader(Lantlr/collections/impl/Vector;I)V
    .locals 3

    .line 1009
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1010
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1012
    :cond_0
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 1014
    invoke-virtual {v1, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 1016
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "static const unsigned long "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_data_[];"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "static const "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "BitSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected genBlockInitAction(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 1054
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 1056
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    iget p1, p1, Lantlr/GrammarElement;->line:I

    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1068
    instance-of v0, p1, Lantlr/RuleBlock;

    if-eqz v0, :cond_8

    .line 1069
    check-cast p1, Lantlr/RuleBlock;

    .line 1070
    iget-object v0, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1071
    :goto_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    .line 1073
    :cond_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 1079
    instance-of v2, v1, Lantlr/RuleRefElement;

    const-string v3, " = "

    const-string v4, " "

    const-string v5, ";"

    if-nez v2, :cond_3

    instance-of v6, v1, Lantlr/AlternativeBlock;

    if-eqz v6, :cond_1

    instance-of v6, v1, Lantlr/RuleBlock;

    if-nez v6, :cond_1

    instance-of v6, v1, Lantlr/SynPredBlock;

    if-nez v6, :cond_1

    goto :goto_1

    .line 1117
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_7

    .line 1124
    instance-of v2, v1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1127
    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1130
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 1086
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

    .line 1094
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1095
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_7

    .line 1096
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto :goto_2

    .line 1100
    :cond_4
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_5

    .line 1103
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    .line 1105
    :cond_5
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_6

    .line 1106
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "RefToken "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1108
    :cond_6
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_7

    .line 1110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public genBody(Lantlr/LexerGrammar;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1140
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1141
    iput v2, v0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1142
    iget-object v3, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v4, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v3

    iput-object v3, v0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v3, 0x0

    .line 1145
    iput-boolean v3, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1146
    iput-boolean v2, v0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1148
    iput v3, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1151
    iget-object v4, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 1153
    const-string v4, "pre_include_cpp"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1155
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "#include \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".hpp\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1156
    const-string v4, "#include <antlr/CharBuffer.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1157
    const-string v4, "#include <antlr/TokenStreamException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1158
    const-string v4, "#include <antlr/TokenStreamIOException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1159
    const-string v4, "#include <antlr/TokenStreamRecognitionException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1160
    const-string v4, "#include <antlr/CharStreamException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1161
    const-string v4, "#include <antlr/CharStreamIOException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1162
    const-string v4, "#include <antlr/NoViableAltForCharException.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1163
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_0

    .line 1164
    const-string v4, "#include <antlr/DebuggingInputBuffer.hpp>"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1165
    :cond_0
    const-string v4, ""

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1166
    const-string v5, "post_include_cpp"

    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1168
    sget-object v5, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v5, :cond_1

    .line 1169
    iget-object v6, v0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1172
    :cond_1
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1176
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1177
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 1181
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1182
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1183
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1186
    :goto_0
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v7, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v6, :cond_4

    .line 1188
    const-string v6, "#if 0"

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1194
    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "::"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v10, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "istream& in)"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1195
    iget v6, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v6, v2

    iput v6, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1197
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    const-string v10, "(new "

    const-string v11, ")"

    const-string v12, ": "

    if-eqz v6, :cond_5

    .line 1198
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v13, "DebuggingInputBuffer(new "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v13, "CharBuffer(in)),"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v13, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1200
    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v13, "CharBuffer(in),"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v13, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1201
    :goto_1
    iget v6, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v6, v2

    iput v6, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1202
    const-string v6, "{"

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1203
    iget v13, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v13, v2

    iput v13, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1207
    iget-object v13, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v13, v13, Lantlr/Grammar;->debuggingOutput:Z

    const-string v14, "setupDebugging();"

    const-string v15, "setSemPredNames(_semPredNames);"

    const-string v3, "setRuleNames(_ruleNames);"

    if-eqz v13, :cond_6

    .line 1208
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1214
    :cond_6
    const-string v13, "initLiterals();"

    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v16, v7

    .line 1215
    iget v7, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v7, v2

    iput v7, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1216
    const-string v7, "}"

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "InputBuffer& ib)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1221
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1223
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_7

    .line 1224
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "DebuggingInputBuffer(ib),"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v4, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1226
    :cond_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "(ib,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v4, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1227
    :goto_2
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1228
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1229
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1233
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_8

    .line 1234
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1240
    :cond_8
    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1241
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1242
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 1243
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1246
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v9, "(const "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v9, "LexerSharedInputState& state)"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1247
    iget v4, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1248
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "(state,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v1, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1249
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1250
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1251
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v4

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1255
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_9

    .line 1256
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1262
    :cond_9
    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1263
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1264
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1267
    iget-boolean v1, v0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v1, :cond_a

    move-object/from16 v1, v16

    .line 1269
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1270
    const-string v1, "#endif"

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1273
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "void "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "::initLiterals()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1275
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1293
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1294
    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1307
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1308
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1312
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_e

    .line 1313
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "const char* "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "::_ruleNames[] = {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1314
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1316
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1318
    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1323
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1324
    iget v1, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1325
    const-string v1, "};"

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1319
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/GrammarSymbol;

    .line 1320
    instance-of v5, v4, Lantlr/RuleSymbol;

    if-eqz v5, :cond_c

    .line 1321
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast v4, Lantlr/RuleSymbol;

    invoke-virtual {v4}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1331
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lantlr/CppCodeGenerator;->genNextToken()V

    .line 1334
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v1, 0x0

    .line 1336
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1346
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_f

    .line 1347
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->genSemPredMap(Ljava/lang/String;)V

    .line 1350
    :cond_f
    iget-object v1, v0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v3, Lantlr/LexerGrammar;

    iget-object v3, v3, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1352
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1353
    sget-object v1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_10

    .line 1354
    iget-object v2, v0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1357
    :cond_10
    iget-object v1, v0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const/4 v1, 0x0

    .line 1358
    iput-object v1, v0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 1337
    :cond_11
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 1339
    invoke-virtual {v3}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnextToken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    add-int/lit8 v5, v1, 0x1

    .line 1340
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v1, v6}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v1, v5

    goto :goto_7

    :cond_12
    const/4 v9, 0x0

    .line 1342
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x0

    .line 1295
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1296
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_14

    goto/16 :goto_3

    .line 1299
    :cond_14
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5, v4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    .line 1300
    instance-of v5, v4, Lantlr/StringLiteralSymbol;

    if-eqz v5, :cond_b

    .line 1301
    check-cast v4, Lantlr/StringLiteralSymbol;

    .line 1302
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "literals["

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public genBody(Lantlr/ParserGrammar;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1384
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".cpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1385
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1386
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 1388
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    .line 1390
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1393
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 1395
    const-string v2, "pre_include_cpp"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1398
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "#include \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".hpp\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1399
    const-string v2, "#include <antlr/NoViableAltException.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1400
    const-string v2, "#include <antlr/SemanticException.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1401
    const-string v2, "#include <antlr/ASTFactory.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1403
    const-string v2, "post_include_cpp"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1405
    sget-object v2, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v2, :cond_0

    .line 1406
    iget-object v3, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1409
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1412
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1413
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 1416
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1417
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1418
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    :goto_0
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v3, :cond_5

    .line 1424
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "const char* "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "::_ruleNames[] = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1425
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1427
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 1429
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1434
    const-string v3, "0"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1435
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v3, v0

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1436
    const-string v3, "};"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1430
    :cond_4
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/GrammarSymbol;

    .line 1431
    instance-of v5, v4, Lantlr/RuleSymbol;

    if-eqz v5, :cond_3

    .line 1432
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast v4, Lantlr/RuleSymbol;

    invoke-virtual {v4}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1455
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v4, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v3, :cond_6

    .line 1457
    const-string v3, "#if 0"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1462
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1463
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "("

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, "TokenBuffer& tokenBuf, int k)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1464
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, ": "

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v8, "(tokenBuf,k)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1465
    const-string v3, "{"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1469
    const-string v8, "}"

    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1470
    const-string v9, ""

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1472
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1473
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v11, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "TokenBuffer& tokenBuf)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1474
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "(tokenBuf,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v11, v11, Lantlr/Grammar;->maxk:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v12, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1484
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v12, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v12, "TokenStream& lexer, int k)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v12, "(lexer,k)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1493
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v12, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1494
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "TokenStream& lexer)"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "(lexer,"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v10, v10, Lantlr/Grammar;->maxk:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1504
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v10, "(const "

    invoke-direct {v6, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "ParserSharedInputState& state)"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "(state,"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1513
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v2, :cond_7

    .line 1515
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1516
    const-string v2, "#endif"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1519
    :cond_7
    new-instance v2, Lantlr/collections/impl/Vector;

    invoke-direct {v2}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    .line 1522
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v4, v1

    .line 1524
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1532
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_8

    .line 1541
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "::getAST()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1543
    const-string v0, "\treturn returnAST;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1548
    :cond_8
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1551
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genTokenStrings(Ljava/lang/String;)V

    .line 1554
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1557
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_9

    .line 1558
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genSemPredMap(Ljava/lang/String;)V

    .line 1561
    :cond_9
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1563
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_a

    .line 1564
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1567
    :cond_a
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 1568
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 1525
    :cond_b
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 1526
    instance-of v7, v6, Lantlr/RuleSymbol;

    if-eqz v7, :cond_d

    .line 1527
    check-cast v6, Lantlr/RuleSymbol;

    .line 1528
    iget-object v7, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_c

    move v7, v0

    goto :goto_4

    :cond_c
    move v7, v1

    :goto_4
    add-int/lit8 v10, v4, 0x1

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v7, v4, v11}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v4, v10

    .line 1530
    :cond_d
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_3
.end method

.method public genBody(Lantlr/TreeWalkerGrammar;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1573
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".cpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1574
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1575
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 1578
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 1579
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1582
    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 1584
    const-string v1, "pre_include_cpp"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1587
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#include \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".hpp\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1588
    const-string v1, "#include <antlr/Token.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1589
    const-string v1, "#include <antlr/AST.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1590
    const-string v1, "#include <antlr/NoViableAltException.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1591
    const-string v1, "#include <antlr/MismatchedTokenException.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1592
    const-string v1, "#include <antlr/SemanticException.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1593
    const-string v1, "#include <antlr/BitSet.hpp>"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1595
    const-string v1, "post_include_cpp"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1597
    sget-object v1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_0

    .line 1598
    iget-object v2, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1601
    :cond_0
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1605
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1606
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1609
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 1610
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1611
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1612
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1614
    :goto_0
    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v2, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v1, :cond_3

    .line 1616
    const-string v1, "#if 0"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1621
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1622
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "\t: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "TreeParser() {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1623
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, p1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1625
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, p1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1626
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1628
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v4, :cond_4

    .line 1630
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1631
    const-string v2, "#endif"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1633
    :cond_4
    const-string v2, ""

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1635
    new-instance v4, Lantlr/collections/impl/Vector;

    invoke-direct {v4}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v4, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    .line 1638
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move v5, v0

    .line 1641
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1650
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_5

    .line 1654
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "::getAST()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1655
    const-string p1, "{"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1656
    const-string p1, "\treturn returnAST;"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1662
    :cond_5
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1664
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genTokenStrings(Ljava/lang/String;)V

    .line 1667
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1670
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1673
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_6

    .line 1674
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1677
    :cond_6
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 1678
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 1642
    :cond_7
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 1643
    instance-of v7, v6, Lantlr/RuleSymbol;

    if-eqz v7, :cond_9

    .line 1644
    check-cast v6, Lantlr/RuleSymbol;

    .line 1645
    iget-object v7, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_8

    move v7, p1

    goto :goto_2

    :cond_8
    move v7, v0

    :goto_2
    add-int/lit8 v8, v5, 0x1

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v5, v9}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v5, v8

    .line 1647
    :cond_9
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_1
.end method

.method protected genCases(Lantlr/collections/impl/BitSet;)V
    .locals 4

    .line 1684
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

    .line 1687
    :cond_0
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p1

    const/4 v0, 0x0

    .line 1692
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    .line 1694
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 1698
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "case "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget v3, p1, v0

    invoke-direct {p0, v3}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1731
    new-instance v2, Lantlr/CppBlockFinishingInfo;

    invoke-direct {v2}, Lantlr/CppBlockFinishingInfo;-><init>()V

    .line 1732
    iget-boolean v3, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "genCommonBlk("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1735
    :cond_0
    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1736
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    iput-boolean v6, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1738
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v6, :cond_2

    .line 1739
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    iput-boolean v7, v0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1742
    iget-boolean v7, v1, Lantlr/AlternativeBlock;->not:Z

    const-string v8, ""

    if-eqz v7, :cond_7

    iget-object v7, v0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/LexerGrammar;

    invoke-interface {v7, v1, v9}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1745
    iget-object v3, v0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v4, v1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v3

    .line 1747
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v4, v0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v4, :cond_3

    .line 1748
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1752
    :cond_3
    invoke-direct/range {p0 .. p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1755
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_5

    .line 1756
    iget-boolean v1, v0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v1, :cond_4

    .line 1757
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "static_cast<"

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "RefAST>(_t),"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1759
    :cond_4
    const-string v8, "_t,"

    .line 1763
    :cond_5
    :goto_2
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

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1766
    iget-object v1, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_6

    .line 1768
    const-string v1, "_t = _t->getNextSibling();"

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-object v2

    .line 1774
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v4, :cond_a

    .line 1776
    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 1778
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_8

    .line 1780
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

    .line 1789
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1792
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iget v4, v1, Lantlr/GrammarElement;->line:I

    invoke-virtual {v0, v3, v4}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 1794
    :cond_9
    invoke-virtual {v0, v7, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    return-object v2

    :cond_a
    move v7, v5

    move v9, v7

    .line 1810
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-lt v7, v10, :cond_2c

    .line 1818
    iget v7, v0, Lantlr/CodeGenerator;->makeSwitchThreshold:I

    const-string v10, "{"

    const-string v11, "_t = ASTNULL;"

    const-string v12, " )"

    const-string v13, "if (_t == "

    const-string v14, "}"

    if-lt v9, v7, :cond_f

    .line 1821
    invoke-direct {v0, v4}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v7

    .line 1824
    iget-object v9, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v9, :cond_b

    .line 1826
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1827
    iget v9, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v9, v4

    iput v9, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1828
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1829
    iget v9, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v9, v4

    iput v9, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1831
    :cond_b
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v15, "switch ( "

    invoke-direct {v9, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, ") {"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move v7, v5

    .line 1832
    :goto_4
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-lt v7, v9, :cond_c

    .line 1859
    const-string v7, "default:"

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1860
    iget v7, v0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v7, v4

    iput v7, v0, Lantlr/CodeGenerator;->tabs:I

    move v5, v4

    move-object/from16 v17, v8

    goto :goto_6

    .line 1834
    :cond_c
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 1837
    invoke-static {v9}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v15

    if-nez v15, :cond_d

    move-object/from16 v17, v8

    goto :goto_5

    .line 1841
    :cond_d
    iget-object v15, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v15, v15, v4

    .line 1842
    iget-object v5, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v5}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v15}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1844
    iget-object v5, v0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v15, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v15}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v4}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    iget-object v9, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v9}, Lantlr/GrammarElement;->getColumn()I

    move-result v9

    move-object/from16 v17, v8

    const-string v8, "Alternate omitted due to empty prediction set"

    invoke-virtual {v5, v8, v15, v4, v9}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    :cond_e
    move-object/from16 v17, v8

    .line 1850
    iget-object v4, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->genCases(Lantlr/collections/impl/BitSet;)V

    .line 1851
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1852
    iget v4, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1853
    invoke-virtual {v0, v9, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 1854
    const-string v4, "break;"

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1855
    iget v4, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1856
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v17

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v17, v8

    const/4 v5, 0x0

    .line 1877
    :goto_6
    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-gez v4, :cond_15

    move-object/from16 v1, v17

    const/4 v4, 0x1

    :goto_9
    if-le v4, v7, :cond_14

    .line 2032
    iput-boolean v3, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 2035
    iput-boolean v6, v0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v5, :cond_12

    .line 2039
    iget v3, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2040
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 2041
    iput-boolean v4, v2, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-lez v8, :cond_11

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    .line 2042
    :goto_a
    iput-boolean v4, v2, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    goto :goto_c

    .line 2047
    :cond_12
    iput-object v1, v2, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2048
    iput-boolean v1, v2, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-lez v8, :cond_13

    const/4 v4, 0x1

    goto :goto_b

    :cond_13
    const/4 v4, 0x0

    .line 2049
    :goto_b
    iput-boolean v4, v2, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    :goto_c
    return-object v2

    .line 2027
    :cond_14
    iget v9, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2028
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1879
    :cond_15
    iget-boolean v9, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v9, :cond_16

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    move/from16 v18, v3

    const-string v3, "checking depth "

    invoke-direct {v15, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    move/from16 v18, v3

    :goto_d
    const/4 v3, 0x0

    .line 1880
    :goto_e
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-lt v3, v9, :cond_17

    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v18

    goto/16 :goto_8

    .line 1881
    :cond_17
    invoke-virtual {v1, v3}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 1882
    iget-boolean v15, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v15, :cond_18

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuffer;

    move-object/from16 p2, v14

    const-string v14, "genAlt: "

    invoke-direct {v6, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_18
    move/from16 v19, v6

    move-object/from16 p2, v14

    :goto_f
    if-eqz v5, :cond_19

    .line 1886
    invoke-static {v9}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1889
    iget-boolean v6, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v6, :cond_1d

    .line 1890
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "ignoring alt because it was in the switch"

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1897
    :cond_19
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_1f

    .line 1900
    iget v6, v9, Lantlr/Alternative;->lookaheadDepth:I

    const v14, 0x7fffffff

    if-ne v6, v14, :cond_1a

    .line 1904
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    :cond_1a
    :goto_10
    const/4 v14, 0x1

    if-lt v6, v14, :cond_1c

    .line 1906
    iget-object v14, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v14

    if-nez v14, :cond_1b

    goto :goto_11

    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    :cond_1c
    :goto_11
    if-eq v6, v4, :cond_1e

    .line 1915
    iget-boolean v9, v0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v9, :cond_1d

    .line 1916
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "ignoring alt because effectiveDepth!=altDepth;"

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v14, "!="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d
    :goto_12
    move-object/from16 v21, v2

    move/from16 v23, v3

    move/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v25, v10

    const/4 v3, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_19

    .line 1919
    :cond_1e
    invoke-virtual {v0, v9, v6}, Lantlr/CppCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v14

    .line 1920
    invoke-virtual {v0, v9, v6}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    .line 1924
    :cond_1f
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v9, v6}, Lantlr/CppCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v14

    .line 1925
    iget-object v6, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v9, v6}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    .line 1930
    :goto_13
    iget-object v15, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    iget-object v15, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v15}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v15

    move/from16 v20, v4

    const-string v4, "if "

    move/from16 v22, v5

    const-string v5, "else if "

    move/from16 v23, v3

    const-string v3, " {"

    move/from16 v24, v7

    const/16 v7, 0x7f

    if-le v15, v7, :cond_22

    invoke-static {v9}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v7

    if-eqz v7, :cond_22

    if-nez v8, :cond_21

    .line 1937
    iget-object v5, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-eqz v5, :cond_20

    .line 1938
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1939
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1940
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1941
    iget v5, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v5, v7

    iput v5, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1943
    :cond_20
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 1946
    :cond_21
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_14
    move-object/from16 v21, v2

    move-object/from16 v25, v10

    goto/16 :goto_17

    .line 1948
    :cond_22
    const-string v7, "else {"

    if-eqz v14, :cond_24

    iget-object v14, v9, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v14, :cond_24

    iget-object v14, v9, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v14, :cond_24

    if-nez v8, :cond_23

    .line 1957
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 1960
    :cond_23
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_15
    const/4 v14, 0x0

    .line 1962
    iput-boolean v14, v2, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    goto :goto_14

    :cond_24
    const/4 v14, 0x0

    .line 1968
    iget-object v15, v9, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v15, :cond_27

    .line 1972
    new-instance v15, Lantlr/ActionTransInfo;

    invoke-direct {v15}, Lantlr/ActionTransInfo;-><init>()V

    .line 1973
    iget-object v14, v9, Lantlr/Alternative;->semPred:Ljava/lang/String;

    move-object/from16 v21, v2

    iget v2, v1, Lantlr/GrammarElement;->line:I

    move-object/from16 v25, v10

    iget-object v10, v0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0, v14, v2, v10, v15}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1980
    iget-object v10, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v10, v10, Lantlr/ParserGrammar;

    const-string v14, "))"

    const-string v15, "("

    if-nez v10, :cond_25

    iget-object v10, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v10, v10, Lantlr/LexerGrammar;

    if-eqz v10, :cond_26

    :cond_25
    iget-object v10, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v10, v10, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v10, :cond_26

    .line 1981
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v10, v0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v10, v2}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    .line 1984
    :cond_26
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v10, "&&("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    :cond_27
    move-object/from16 v21, v2

    move-object/from16 v25, v10

    :goto_16
    if-lez v8, :cond_29

    .line 1989
    iget-object v2, v9, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_28

    .line 1990
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1991
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 1992
    iget-object v2, v9, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/CppCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    add-int/lit8 v7, v24, 0x1

    goto :goto_18

    .line 1996
    :cond_28
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 2000
    :cond_29
    iget-object v2, v9, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_2a

    .line 2001
    iget-object v2, v9, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/CppCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    goto :goto_17

    .line 2006
    :cond_2a
    iget-object v2, v0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_2b

    .line 2007
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2008
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2009
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2010
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v5

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2012
    :cond_2b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_17
    move/from16 v7, v24

    :goto_18
    add-int/lit8 v8, v8, 0x1

    .line 2019
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    .line 2020
    invoke-virtual {v0, v9, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 2021
    iget v2, v0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/CodeGenerator;->tabs:I

    move-object/from16 v2, p2

    .line 2022
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_19
    add-int/lit8 v4, v23, 0x1

    move-object v14, v2

    move v3, v4

    move/from16 v6, v19

    move/from16 v4, v20

    move-object/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v10, v25

    goto/16 :goto_e

    :cond_2c
    move-object/from16 v21, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v19, v6

    move-object/from16 v17, v8

    .line 1812
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 1813
    invoke-static {v2}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v9, v9, 0x1

    :cond_2d
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    move-object/from16 v8, v17

    move/from16 v3, v18

    move/from16 v6, v19

    move-object/from16 v2, v21

    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method protected genHeader(Ljava/lang/String;)V
    .locals 3

    .line 2315
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "/* $ANTLR "

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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\"$ */"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genInclude(Lantlr/LexerGrammar;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2324
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".hpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2325
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2326
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 2329
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 2330
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 2332
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2335
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "#ifndef INC_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_hpp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2336
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "#define INC_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2337
    const-string v2, ""

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2339
    const-string v3, "pre_include_hpp"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2341
    const-string v3, "#include <antlr/config.hpp>"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2344
    iget-object v3, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 2347
    const-string v3, "#include <antlr/CommonToken.hpp>"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2348
    const-string v3, "#include <antlr/InputBuffer.hpp>"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2349
    const-string v3, "#include <antlr/BitSet.hpp>"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2350
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "#include \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ".hpp\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2354
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2355
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->superClass:Ljava/lang/String;

    .line 2356
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2359
    :cond_0
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 2360
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2361
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2362
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "#include <antlr/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".hpp>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2363
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2367
    :goto_0
    const-string v4, "post_include_hpp"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2369
    sget-object v4, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v4, :cond_2

    .line 2370
    iget-object v5, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2372
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2375
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2376
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2380
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " : public "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2381
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ", public "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2383
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v4, "classHeaderSuffix"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/Token;

    if-eqz v3, :cond_4

    .line 2385
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-static {v3, v4, v4}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2387
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ", "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2390
    :cond_4
    const-string v3, "{"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2393
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 2394
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/Token;)V

    .line 2395
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v6}, Lantlr/Token;->getLine()I

    move-result v6

    iget-object v7, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v4, v6, v7, v5}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2404
    :cond_5
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2405
    const-string v4, "private:"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2406
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2407
    const-string v6, "void initLiterals();"

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2410
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2411
    const-string v6, "public:"

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2412
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2413
    const-string v7, "bool getCaseSensitiveLiterals() const"

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2415
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2416
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, "return "

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2417
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2418
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2421
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2422
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2423
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2425
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v3, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz p1, :cond_6

    .line 2427
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2428
    const-string p1, "#if 0"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2430
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2434
    :cond_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v6, "("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v7, "istream& in);"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2437
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v6, "InputBuffer& ib);"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2439
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v6, "(const "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v6, "LexerSharedInputState& state);"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2440
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz p1, :cond_7

    .line 2442
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2443
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2444
    const-string p1, "#endif"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2445
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2451
    :cond_7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "RefToken nextToken();"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2454
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 2455
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2465
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2466
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2467
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2470
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_8

    .line 2471
    const-string p1, "static const char* _ruleNames[];"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2475
    :cond_8
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_9

    .line 2476
    const-string p1, "static const char* _semPredNames[];"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2479
    :cond_9
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-object v0, v0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 2481
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2482
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2484
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_a

    .line 2485
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 2488
    :cond_a
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "#endif /*INC_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2491
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 2492
    iput-object v5, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 2456
    :cond_b
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 2458
    invoke-virtual {v3}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mnextToken"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2459
    invoke-virtual {p0, v3, v1}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 2461
    :cond_c
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_1
.end method

.method public genInclude(Lantlr/ParserGrammar;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2497
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".hpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2498
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2499
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2502
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 2504
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2507
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#ifndef INC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2508
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "#define INC_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2509
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2510
    const-string v2, "pre_include_hpp"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2511
    const-string v2, "#include <antlr/config.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2514
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 2517
    const-string v2, "#include <antlr/TokenStream.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2518
    const-string v2, "#include <antlr/TokenBuffer.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2519
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "#include \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ".hpp\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2523
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2524
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    .line 2525
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2528
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 2529
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2530
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2531
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "#include <antlr/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".hpp>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2532
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2534
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2537
    const-string v3, "post_include_hpp"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2539
    sget-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v3, :cond_2

    .line 2540
    iget-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2542
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2545
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2546
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2550
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2551
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", public "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2553
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderSuffix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_4

    .line 2555
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2557
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2559
    :cond_4
    const-string v2, "{"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2563
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v3, :cond_5

    .line 2564
    const-string v3, "public: static const char* _ruleNames[];"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2567
    :cond_5
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 2568
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 2569
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v5, v6, v4}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2576
    :cond_6
    const-string v3, "public:"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2577
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2578
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "void initializeASTFactory( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "ASTFactory& factory );"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2583
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2584
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v6, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v5, :cond_7

    .line 2586
    const-string v5, "#if 0"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2589
    :cond_7
    const-string v5, "protected:"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2590
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2591
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, "TokenBuffer& tokenBuf, int k);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2592
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2593
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2594
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2595
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, "TokenBuffer& tokenBuf);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2598
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2599
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2600
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2601
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, "TokenStream& lexer, int k);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2602
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2603
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2604
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2605
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "TokenStream& lexer);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "(const "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ParserSharedInputState& state);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2608
    iget-boolean v7, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v8, "#endif"

    if-eqz v7, :cond_8

    .line 2610
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2611
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2613
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2616
    :cond_8
    const-string v6, "int getNumTokens() const"

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v6, p1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2618
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "return "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, "::NUM_TOKENS;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2619
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v6, p1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    const-string v6, "}"

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2620
    const-string v9, "const char* getTokenName( int type ) const"

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v9, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v9, p1

    iput v9, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2622
    const-string v9, "if( type > getNumTokens() ) return 0;"

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "::tokenNames[type];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2624
    iget v9, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v9, p1

    iput v9, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2625
    const-string v9, "const char* const* getTokenNames() const"

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2627
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "::tokenNames;"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2628
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2631
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 2632
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2641
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_9

    .line 2645
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2646
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " getAST();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2648
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2649
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2652
    :cond_9
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2653
    const-string v2, "private:"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2654
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2657
    const-string p1, "static const char* tokenNames[];"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2659
    const-string p1, "#ifndef NO_STATIC_CONSTS"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2660
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "static const int NUM_TOKENS = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2661
    const-string p1, "#else"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2662
    const-string p1, "enum {"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2663
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "\tNUM_TOKENS = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2664
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2668
    iget-object v2, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->maxTokenType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 2671
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_a

    .line 2672
    const-string v2, "static const char* _semPredNames[];"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2675
    :cond_a
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2676
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2678
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_b

    .line 2679
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 2682
    :cond_b
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "#endif /*INC_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2685
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 2686
    iput-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 2633
    :cond_c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 2634
    instance-of v7, v6, Lantlr/RuleSymbol;

    if-eqz v7, :cond_e

    .line 2635
    check-cast v6, Lantlr/RuleSymbol;

    .line 2636
    iget-object v7, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_d

    move v7, p1

    goto :goto_2

    :cond_d
    move v7, v0

    :goto_2
    invoke-virtual {p0, v6, v7}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 2638
    :cond_e
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_1
.end method

.method public genInclude(Lantlr/TreeWalkerGrammar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2691
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".hpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2692
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2693
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2696
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 2697
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2700
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#ifndef INC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2701
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "#define INC_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2702
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2703
    const-string v2, "pre_include_hpp"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2704
    const-string v2, "#include <antlr/config.hpp>"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2705
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "#include \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v4, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ".hpp\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2708
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 2712
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2713
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    .line 2714
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2717
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 2718
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2719
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2720
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "#include <antlr/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".hpp>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2721
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2723
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2728
    const-string v3, "post_include_hpp"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2730
    sget-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v3, :cond_2

    .line 2731
    iget-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2733
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2736
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2737
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2741
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2742
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", public "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2744
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderSuffix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_4

    .line 2746
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2748
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2751
    :cond_4
    const-string v2, "{"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2754
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 2755
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 2756
    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v5, v6, v4}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2765
    :cond_5
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2766
    const-string v3, "public:"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2768
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v5, :cond_6

    .line 2770
    const-string v5, "#if 0"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2771
    const-string v5, "// constructor creation turned of with \'noConstructor\' option"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2773
    :cond_6
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2774
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2775
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v6, "#endif"

    if-eqz v5, :cond_7

    .line 2777
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2778
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2779
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2783
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "void initializeASTFactory( "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "ASTFactory& factory );"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2785
    const-string v5, "int getNumTokens() const"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v5, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v5, p1

    iput v5, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2787
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "return "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, "::NUM_TOKENS;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2788
    iget v5, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v5, p1

    iput v5, p0, Lantlr/CodeGenerator;->tabs:I

    const-string v5, "}"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2789
    const-string v8, "const char* getTokenName( int type ) const"

    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2791
    const-string v2, "if( type > getNumTokens() ) return 0;"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2792
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, "::tokenNames[type];"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2793
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2796
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 2798
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2806
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_8

    .line 2810
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2811
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " getAST();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2813
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    const-string v2, "protected:"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2814
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2815
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " _retTree;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2819
    :cond_8
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2820
    const-string v2, "private:"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2821
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2824
    const-string p1, "static const char* tokenNames[];"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2826
    const-string p1, "#ifndef NO_STATIC_CONSTS"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2827
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "static const int NUM_TOKENS = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2828
    const-string p1, "#else"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2829
    const-string p1, "enum {"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2830
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v2, "\tNUM_TOKENS = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2831
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2835
    iget-object v2, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->maxTokenType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 2838
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 2839
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2841
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_9

    .line 2842
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 2845
    :cond_9
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "#endif /*INC_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2848
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 2849
    iput-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 2799
    :cond_a
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/GrammarSymbol;

    .line 2800
    instance-of v7, v5, Lantlr/RuleSymbol;

    if-eqz v7, :cond_c

    .line 2801
    check-cast v5, Lantlr/RuleSymbol;

    .line 2802
    iget-object v7, v5, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_b

    move v7, p1

    goto :goto_2

    :cond_b
    move v7, v0

    :goto_2
    invoke-virtual {p0, v5, v7}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 2804
    :cond_c
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto/16 :goto_1
.end method

.method public genInitFactory(Lantlr/Grammar;)V
    .locals 2

    .line 1363
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "void "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "::initializeASTFactory( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ASTFactory& factory )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1364
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1365
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1367
    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    if-eqz p1, :cond_1

    .line 1370
    iget-object p1, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 1371
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "factory.setMaxNodeType("

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1372
    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1376
    :cond_1
    :goto_1
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 1377
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genLineNo(I)V
    .locals 2

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 203
    :cond_0
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public genLineNo(Lantlr/GrammarElement;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    :cond_0
    return-void
.end method

.method public genLineNo(Lantlr/Token;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    :cond_0
    return-void
.end method

.method public genLineNo2()V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected genMatch(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2886
    instance-of v0, p1, Lantlr/StringLiteralElement;

    if-eqz v0, :cond_1

    .line 2887
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 2888
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2891
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2894
    :cond_1
    instance-of v0, p1, Lantlr/CharLiteralElement;

    if-eqz v0, :cond_3

    .line 2895
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 2896
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2899
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

    .line 2902
    :cond_3
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_4

    .line 2903
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2904
    :cond_4
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_5

    .line 2905
    check-cast p1, Lantlr/WildcardElement;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->gen(Lantlr/WildcardElement;)V

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

    .line 2911
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 2912
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 2913
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "static_cast<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "RefAST>(_t),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2915
    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    .line 2911
    :cond_1
    const-string v0, ""

    .line 2919
    :goto_0
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2920
    :cond_2
    const-string v1, "_saveIndex=text.length();"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2923
    :cond_3
    iget-boolean v1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v1, :cond_4

    const-string v1, "matchNot("

    goto :goto_1

    :cond_4
    const-string v1, "match("

    :goto_1
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 2924
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2927
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2929
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Token::EOF_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 2932
    :cond_5
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->textOrChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2934
    :goto_2
    const-string v0, ");"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2936
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 2937
    :cond_6
    const-string p1, "text.erase(_saveIndex);"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V
    .locals 2

    .line 2943
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 2944
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 2945
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "static_cast<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "RefAST>(_t),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2947
    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    .line 2943
    :cond_1
    const-string v0, ""

    .line 2952
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2955
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean p1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz p1, :cond_2

    const-string p1, "matchNot("

    goto :goto_1

    :cond_2
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genNextToken()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    .line 2966
    :goto_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, "RefToken "

    const-string v4, ""

    if-lt v1, v2, :cond_0

    .line 2974
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2975
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "::nextToken() { return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "RefToken(new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "CommonToken("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Token::EOF_TYPE, \"\")); }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2967
    :cond_0
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 2968
    invoke-virtual {v2}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v2, v2, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v5, "public"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2981
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v6, "nextToken"

    invoke-static {v1, v2, v6}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v2

    .line 2983
    new-instance v1, Lantlr/RuleSymbol;

    const-string v6, "mnextToken"

    invoke-direct {v1, v6}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v1}, Lantlr/RuleSymbol;->setDefined()V

    .line 2985
    invoke-virtual {v1, v2}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    .line 2986
    const-string v6, "private"

    iput-object v6, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 2987
    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6, v1}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 2989
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, v2}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 2993
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-boolean v1, v1, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v1, :cond_1

    .line 2994
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-object v1, v1, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v6, v1

    .line 2997
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2998
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "::nextToken()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2999
    const-string v3, "{"

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3000
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3001
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "RefToken theRetToken;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3002
    const-string v1, "for (;;) {"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3003
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v7

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3004
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3005
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v8, "int _ttype = "

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "Token::INVALID_TYPE;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3006
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    iget-boolean v1, v1, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v1, :cond_5

    .line 3007
    const-string v1, "setCommitToPath(false);"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_5

    .line 3010
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v6}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v1

    const-string v8, " does not exist in this lexer"

    const-string v9, "Filter rule "

    if-nez v1, :cond_2

    .line 3011
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 3014
    :cond_2
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v6}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v1

    check-cast v1, Lantlr/RuleSymbol;

    .line 3015
    invoke-virtual {v1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3016
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 3018
    :cond_3
    iget-object v1, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3019
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, " must be protected"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 3022
    :cond_4
    :goto_2
    const-string v1, "int _m;"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3023
    const-string v1, "_m = mark();"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3026
    :cond_5
    const-string v5, "resetText();"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3029
    const-string v1, "try {   // for lexical and char stream error handling"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3030
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v7

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    move v1, v0

    .line 3033
    :goto_3
    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v8

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_d

    .line 3041
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3042
    invoke-virtual {p0, v2, v0}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object v0

    .line 3043
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "if (LA(1)==EOF_CHAR)"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t\t\t\t{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t\t\t\t\tuponEOF();"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t\t\t\t\t_returnToken = makeToken("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "Token::EOF_TYPE);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t\t\t\t}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3047
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3048
    iget-object v10, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v10, Lantlr/LexerGrammar;

    iget-boolean v10, v10, Lantlr/LexerGrammar;->filterMode:Z

    const-string v11, "RecognitionException& e) {"

    const-string v12, "(false);}"

    const-string v13, "else {"

    const-string v14, "}"

    if-eqz v10, :cond_7

    if-nez v6, :cond_6

    .line 3050
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "else {consume(); goto tryAgain;}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 3053
    :cond_6
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\tcommit();"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\ttry {m"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\tcatch("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v10, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\t\t// catastrophic failure"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\t\treportError(e);"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\t\tconsume();"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\t}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "\t\t\t\t\tgoto tryAgain;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 3066
    :cond_7
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3068
    :goto_4
    invoke-direct {p0, v0, v8}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 3071
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_8

    if-eqz v6, :cond_8

    .line 3072
    const-string v0, "commit();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3078
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, "if ( !_returnToken )"

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, "\t\t\t\tgoto tryAgain; // found SKIP token"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3080
    const-string v0, "_ttype = _returnToken->getType();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getTestLiterals()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3082
    invoke-direct {p0}, Lantlr/CppCodeGenerator;->genLiteralsTest()V

    .line 3086
    :cond_9
    const-string v0, "_returnToken->setType(_ttype);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3087
    const-string v0, "return _returnToken;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3090
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3091
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3092
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "catch ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3093
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3094
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    const-string v8, "consume();"

    if-eqz v0, :cond_b

    .line 3095
    const-string v0, "if ( !getCommitToPath() ) {"

    if-nez v6, :cond_a

    .line 3096
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3097
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3098
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3099
    const-string v0, "goto tryAgain;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3100
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3101
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3104
    :cond_a
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3105
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3106
    const-string v0, "rewind(_m);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3108
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "try {m"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3109
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "catch("

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v5, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "RecognitionException& ee) {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3110
    const-string v0, "\t// horrendous failure: error in filter rule"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3111
    const-string v0, "\treportError(ee);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3112
    const-string v0, "\tconsume();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3115
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3116
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3117
    const-string v0, "else"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3120
    :cond_b
    :goto_5
    invoke-virtual {v2}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3121
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3122
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3123
    const-string v0, "reportError(e);"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3125
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3126
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3130
    :cond_c
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3131
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "throw "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "TokenStreamRecognitionException(e);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3132
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3136
    :goto_6
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3137
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "CharStreamIOException& csie) {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3139
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\tthrow "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "TokenStreamIOException(csie.io);"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "CharStreamException& cse) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "TokenStreamException(cse.getMessage());"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3146
    const-string v0, "tryAgain:;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3147
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3148
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3151
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v0, v7

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3152
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 3034
    :cond_d
    invoke-virtual {v2, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v8

    .line 3035
    iget-object v8, v8, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3036
    iget-object v8, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v9, "found optional path in nextToken()"

    invoke-virtual {v8, v9}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V
    .locals 10

    .line 3173
    iget-boolean p2, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "genRule("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3174
    :cond_0
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3175
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "undefined rule: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    .line 3180
    :cond_1
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object p2

    .line 3182
    iput-object p2, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 3183
    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 3186
    iget-object v0, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3189
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3190
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 3193
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v3

    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 3196
    iget-object v3, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3197
    iget-object v3, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3201
    :cond_3
    iget-object v3, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v4, " "

    if-eqz v3, :cond_4

    .line 3204
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lantlr/CodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    .line 3207
    :cond_4
    const-string v3, "void "

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3211
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v3, "("

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3214
    iget-object p4, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3215
    iget-object p4, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p2, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz p4, :cond_5

    .line 3216
    const-string p4, ","

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3220
    :cond_5
    iget-object p4, p2, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const-string v3, ") "

    const-string v5, ""

    if-eqz p4, :cond_6

    .line 3223
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3226
    iget p4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p4, v2

    iput p4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3227
    iget-object p4, p2, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3228
    iget p4, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p4, v2

    iput p4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3229
    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 3233
    :cond_6
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3241
    :goto_2
    const-string p4, "{"

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3242
    iget p4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p4, v2

    iput p4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3244
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p4, p4, Lantlr/Grammar;->traceRules:Z

    if-eqz p4, :cond_9

    .line 3245
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p4, p4, Lantlr/TreeWalkerGrammar;

    if-eqz p4, :cond_8

    .line 3246
    iget-boolean p4, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    const-string v3, "Tracer traceInOut(this,\""

    if-eqz p4, :cond_7

    .line 3247
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v3, "\",static_cast<"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v3, "RefAST>(_t));"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3249
    :cond_7
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v3, "\",_t);"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3252
    :cond_8
    new-instance p4, Ljava/lang/StringBuffer;

    const-string v3, "Tracer traceInOut(this, \""

    invoke-direct {p4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v3, "\");"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3257
    :cond_9
    :goto_3
    iget-object p4, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v3, ";"

    if-eqz p4, :cond_a

    .line 3259
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 3260
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3261
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 3265
    :cond_a
    iget-object p4, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    .line 3266
    iget-object p4, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3268
    :cond_b
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p4, p4, Lantlr/LexerGrammar;

    if-eqz p4, :cond_d

    .line 3273
    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p4

    const-string v6, "mEOF"

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v6, "_ttype = "

    if-eqz p4, :cond_c

    .line 3274
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    const-string v6, "Token::EOF_TYPE;"

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3276
    :cond_c
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3277
    :goto_4
    const-string p4, "int _saveIndex;"

    invoke-virtual {p0, p4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3287
    :cond_d
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p4, p4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p4, :cond_f

    .line 3288
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p4, p4, Lantlr/ParserGrammar;

    const-string v6, "fireEnterRule("

    if-eqz p4, :cond_e

    .line 3289
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ",0);"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3290
    :cond_e
    iget-object p4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p4, p4, Lantlr/LexerGrammar;

    if-eqz p4, :cond_f

    .line 3291
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, ",_ttype);"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3300
    :cond_f
    :goto_5
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p3, p3, Lantlr/TreeWalkerGrammar;

    if-eqz p3, :cond_10

    .line 3303
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p4, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, "_AST_in = _t;"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3305
    :cond_10
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p3, p3, Lantlr/Grammar;->buildAST:Z

    const-string p4, "returnAST = "

    if-eqz p3, :cond_11

    .line 3307
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3309
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v6, "ASTPair currentAST;"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3311
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v4, "_AST = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget-object v4, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3314
    :cond_11
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 3315
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 3316
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {p2, v5}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p3

    if-nez p3, :cond_12

    .line 3322
    invoke-virtual {p2}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3323
    :cond_12
    const-string v4, "try {      // for error handling"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3324
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3328
    :cond_13
    iget-object v4, p2, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->size()I

    move-result v4

    if-ne v4, v2, :cond_16

    .line 3331
    invoke-virtual {p2, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 3332
    iget-object v4, v1, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 3334
    iget-object v6, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget v6, v6, Lantlr/GrammarElement;->line:I

    invoke-virtual {p0, v4, v6}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 3335
    :cond_14
    iget-object v4, v1, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v4, :cond_15

    .line 3336
    iget-object v4, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v6, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v7}, Lantlr/GrammarElement;->getLine()I

    move-result v7

    iget-object v8, v1, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v8}, Lantlr/GrammarElement;->getColumn()I

    move-result v8

    const-string v9, "Syntactic predicate ignored for single alternative"

    invoke-virtual {v4, v9, v6, v7, v8}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3343
    :cond_15
    invoke-virtual {p0, v1, p2}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    goto :goto_6

    .line 3348
    :cond_16
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p2}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 3350
    invoke-virtual {p0, p2, v1}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object v1

    .line 3351
    iget-object v4, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 3355
    :goto_6
    const-string v1, "}"

    if-nez p3, :cond_17

    invoke-virtual {p2}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3357
    :cond_17
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3358
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_18
    if-eqz p3, :cond_19

    .line 3364
    invoke-direct {p0, p3}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    goto/16 :goto_8

    .line 3366
    :cond_19
    invoke-virtual {p2}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 3369
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v4, "catch ("

    invoke-direct {p3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v4, "& ex) {"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3370
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3372
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p3, p3, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p3, :cond_1a

    .line 3373
    const-string p3, "if( inputState->guessing == 0 ) {"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3374
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3376
    :cond_1a
    const-string p3, "reportError(ex);"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3377
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p3, p3, Lantlr/TreeWalkerGrammar;

    if-nez p3, :cond_1b

    .line 3380
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p3, p3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v4, p2, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    invoke-interface {p3, v2, v4}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p3

    .line 3381
    iget-object p3, p3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p3}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p3

    invoke-virtual {p0, p3}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p3

    .line 3382
    const-string v4, "consume();"

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3383
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "consumeUntil("

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v4, ");"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3388
    :cond_1b
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v4, "if ( _t != "

    invoke-direct {p3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v4, " )"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3389
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3390
    const-string p3, "_t = _t->getNextSibling();"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3391
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3393
    :goto_7
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p3, p3, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p3, :cond_1c

    .line 3395
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3397
    const-string p3, "} else {"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3398
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3399
    const-string p3, "throw;"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3400
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3401
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3404
    :cond_1c
    iget p3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p3, v2

    iput p3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3405
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3409
    :cond_1d
    :goto_8
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p3, p3, Lantlr/Grammar;->buildAST:Z

    if-eqz p3, :cond_1e

    .line 3410
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, "_AST;"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3414
    :cond_1e
    iget-object p3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p3, p3, Lantlr/TreeWalkerGrammar;

    if-eqz p3, :cond_1f

    .line 3415
    const-string p3, "_retTree = _t;"

    invoke-virtual {p0, p3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3419
    :cond_1f
    invoke-virtual {p2}, Lantlr/RuleBlock;->getTestLiterals()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 3420
    iget-object p1, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string p3, "protected"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 3421
    invoke-direct {p0}, Lantlr/CppCodeGenerator;->genLiteralsTestForPartialToken()V

    goto :goto_9

    .line 3424
    :cond_20
    invoke-direct {p0}, Lantlr/CppCodeGenerator;->genLiteralsTest()V

    .line 3429
    :cond_21
    :goto_9
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/LexerGrammar;

    if-eqz p1, :cond_22

    .line 3430
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p3, "if ( _createToken && _token=="

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object p3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "nullToken && _ttype!="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object p3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, "Token::SKIP ) {"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3431
    const-string p1, "   _token = makeToken(_ttype);"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3432
    const-string p1, "   _token->setText(text.substr(_begin, text.length()-_begin));"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3434
    const-string p1, "_returnToken = _token;"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3437
    const-string p1, "_saveIndex=0;"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3441
    :cond_22
    iget-object p1, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz p1, :cond_23

    .line 3442
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p3, "return "

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result p4

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result p2

    invoke-virtual {p0, p3, p4, p2}, Lantlr/CodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3470
    :cond_23
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3471
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3475
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    return-void
.end method

.method public genRuleHeader(Lantlr/RuleSymbol;Z)V
    .locals 7

    const/4 p2, 0x1

    .line 3481
    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3482
    iget-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v1, ")"

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "genRuleHeader("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3483
    :cond_0
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3484
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "undefined rule: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    .line 3489
    :cond_1
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 3490
    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 3491
    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 3494
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v2, :cond_2

    .line 3495
    invoke-virtual {v0}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 3498
    invoke-virtual {v0}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v3

    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 3501
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 3504
    iget-object v3, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3507
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v0}, Lantlr/GrammarElement;->getLine()I

    move-result v5

    invoke-virtual {v0}, Lantlr/GrammarElement;->getColumn()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lantlr/CodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    .line 3510
    :cond_3
    const-string v3, "void "

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3514
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3517
    iget-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3518
    iget-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 3519
    const-string p1, ","

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3523
    :cond_4
    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 3526
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3527
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p1, p2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3528
    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3529
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, p2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3530
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 3533
    :cond_5
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3535
    :goto_2
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3537
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, p2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3540
    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    return-void
.end method

.method protected genSemPred(Ljava/lang/String;I)V
    .locals 2

    .line 3611
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 3612
    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, p1, p2, v1, v0}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3614
    iget-object p2, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {p2, p1}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3618
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 3620
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->addSemPred(Ljava/lang/String;)I

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

    .line 3622
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3623
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3624
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "throw "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "SemanticException(\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3625
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    return-void
.end method

.method protected genSemPredMap(Ljava/lang/String;)V
    .locals 3

    .line 3631
    iget-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3632
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "const char* "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "_semPredNames[] = {"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3633
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3634
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3636
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3637
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3638
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 3635
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V
    .locals 5

    .line 3641
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

    .line 3644
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "bool synPredMatched"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3646
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3647
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3650
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/TreeWalkerGrammar;

    if-eqz p2, :cond_1

    .line 3651
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " __t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget v0, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " = _t;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3654
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3658
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3659
    const-string p2, "inputState->guessing++;"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3662
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/ParserGrammar;

    if-nez p2, :cond_2

    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/LexerGrammar;

    if-eqz p2, :cond_3

    .line 3664
    :cond_2
    const-string p2, "fireSyntacticPredicateStarted();"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3667
    :cond_3
    iget p2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    .line 3668
    const-string p2, "try {"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3669
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3670
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 3671
    iget p2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3673
    const-string p2, "}"

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "catch ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "& pe) {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3675
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3676
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lantlr/AlternativeBlock;->ID:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3678
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3679
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_4

    .line 3683
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3686
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3689
    :goto_1
    const-string v0, "inputState->guessing--;"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3692
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_5

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    .line 3694
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3695
    const-string v0, "  fireSyntacticPredicateSucceeded();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3696
    const-string v0, "else"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3697
    const-string v0, "  fireSyntacticPredicateFailed();"

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3700
    :cond_6
    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    .line 3701
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3704
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3707
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genTokenStrings(Ljava/lang/String;)V
    .locals 5

    .line 3721
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "const char* "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "tokenNames[] = {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3722
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3726
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p1

    const/4 v0, 0x0

    .line 3727
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3743
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3746
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3747
    const-string p1, "};"

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 3729
    :cond_0
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3730
    const-string v2, "<"

    if-nez v1, :cond_1

    .line 3732
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3734
    :cond_1
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3735
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3736
    invoke-virtual {v2}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3737
    invoke-virtual {v2}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3740
    :cond_2
    iget-object v2, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v2, v1}, Lantlr/CharFormatter;->literalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 3741
    const-string v1, ","

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3752
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".hpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3753
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 3754
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 3757
    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3760
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#ifndef INC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3761
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "#define INC_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v3, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3762
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3764
    sget-object v1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_0

    .line 3765
    iget-object v2, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 3768
    :cond_0
    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 3772
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "struct "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3773
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v0

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3774
    const-string v1, "enum {"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3775
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v1, v0

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3778
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v1

    .line 3781
    const-string v2, "EOF_ = 1,"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 3786
    :goto_0
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 3818
    const-string v1, "NULL_TREE_LOOKAHEAD = 3"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3821
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v1, v0

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3822
    const-string v1, "};"

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3825
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 3826
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3828
    sget-object v0, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v0, :cond_1

    .line 3829
    iget-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 3832
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#endif /*INC_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v0, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3835
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 3836
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 3837
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    return-void

    .line 3787
    :cond_2
    invoke-virtual {v1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 3789
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ","

    const-string v6, " = "

    if-eqz v4, :cond_6

    .line 3791
    invoke-interface {p1, v3}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    check-cast v4, Lantlr/StringLiteralSymbol;

    if-nez v4, :cond_3

    .line 3793
    iget-object v4, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "String literal "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " not in symbol table"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3795
    :cond_3
    iget-object v7, v4, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 3796
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v4, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3799
    :cond_4
    invoke-direct {p0, v3}, Lantlr/CppCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3802
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3804
    iput-object v7, v4, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    goto :goto_1

    .line 3807
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "// "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3811
    :cond_6
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3812
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3885
    const-string v0, ")"

    const-string v1, "astFactory->create("

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3890
    iget-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "factory.registerFactory("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v3, "::factory);"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 3898
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x2c

    .line 3908
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 3909
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v4

    .line 3912
    :cond_1
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p2}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v4, :cond_2

    .line 3916
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "astFactory->create(static_cast<"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "RefAST>("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3918
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 5

    .line 3866
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3867
    const-string p1, ""

    return-object p1

    .line 3869
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3872
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(astFactory->make((new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "ASTArray("

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

    .line 3875
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 3878
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3879
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3876
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "->add("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getASTCreateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3927
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 3928
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "static_cast<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">(astFactory->create(static_cast<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "RefAST>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3930
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "astFactory->create("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;
    .locals 2

    .line 3963
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3967
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    if-nez p2, :cond_1

    .line 3973
    const-string p1, "true"

    return-object p1

    .line 3999
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

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

    .line 3934
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3937
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-le v1, p2, :cond_0

    .line 3954
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3956
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3939
    :cond_0
    aget-object v3, p1, v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    if-nez v2, :cond_1

    .line 3941
    const-string v2, ") && ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3948
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3949
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3951
    :cond_2
    invoke-virtual {p0, v1, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;
    .locals 4

    .line 4011
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v0

    .line 4014
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    .line 4015
    invoke-static {v1}, Lantlr/CodeGenerator;->elementsAreRange([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4016
    invoke-virtual {p0, p1, v1}, Lantlr/CppCodeGenerator;->getRangeExpression(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4021
    :cond_0
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p1

    if-nez p1, :cond_1

    .line 4023
    const-string p1, "true"

    return-object p1

    .line 4026
    :cond_1
    iget v2, p0, Lantlr/CodeGenerator;->bitsetTestThreshold:I

    if-lt p1, v2, :cond_2

    .line 4027
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    .line 4028
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

    .line 4032
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 4033
    :goto_0
    array-length v2, v1

    if-lt p2, v2, :cond_3

    .line 4043
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4035
    :cond_3
    aget v2, v1, p2

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_4

    .line 4038
    const-string v3, " || "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4039
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4040
    const-string v3, " == "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4041
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getRangeExpression(I[I)Ljava/lang/String;
    .locals 3

    .line 4051
    invoke-static {p2}, Lantlr/CodeGenerator;->elementsAreRange([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4052
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "getRangeExpression called with non-range"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4054
    aget v0, p2, v0

    .line 4055
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget p2, p2, v1

    .line 4056
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " <= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-direct {p0, p2}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

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

    .line 4103
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4105
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    if-le v2, p2, :cond_1

    goto :goto_1

    .line 4108
    :cond_1
    iget-object v3, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v2

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 4109
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
    .locals 7

    .line 4149
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    if-nez v0, :cond_0

    return-object p1

    .line 4154
    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4159
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 4166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_1

    .line 4169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 4178
    :goto_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v4, "_AST"

    if-lt v2, v0, :cond_9

    .line 4192
    iget-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4195
    sget-object p2, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_3

    .line 4200
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v2

    .line 4204
    :cond_3
    iget-object p2, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4210
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

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

    .line 4218
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

    .line 4225
    :cond_6
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4227
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

    .line 4230
    iput-object p1, p2, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    :cond_8
    return-object p1

    .line 4180
    :cond_9
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/AlternativeElement;

    .line 4181
    invoke-virtual {v0}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_a

    goto :goto_2

    .line 4185
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

.method public printAction(Lantlr/Token;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 156
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 157
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_printAction(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method public printHeaderAction(Ljava/lang/String;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Token;

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 171
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method protected println(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 193
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 194
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 3

    .line 4292
    const-string v0, "Error reading action:"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 4297
    :cond_0
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    if-nez v1, :cond_1

    return-object p1

    .line 4300
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

    .line 4307
    :cond_4
    new-instance v1, Lantlr/actions/cpp/ActionLexer;

    invoke-direct {v1, p1, p3, p0, p4}, Lantlr/actions/cpp/ActionLexer;-><init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V

    .line 4309
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->setLineOffset(I)V

    .line 4310
    iget-object p2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lantlr/CharScanner;->setFilename(Ljava/lang/String;)V

    .line 4311
    iget-object p2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->setTool(Lantlr/Tool;)V

    const/4 p2, 0x1

    .line 4314
    :try_start_0
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->mACTION(Z)V

    .line 4315
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

    .line 4328
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

    .line 4324
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

    .line 4320
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->reportError(Lantlr/RecognitionException;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3847
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3853
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "static_cast<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "RefAST>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
