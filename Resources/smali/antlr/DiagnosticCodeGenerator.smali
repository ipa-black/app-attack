.class public Lantlr/DiagnosticCodeGenerator;
.super Lantlr/CodeGenerator;
.source "DiagnosticCodeGenerator.java"


# instance fields
.field protected doingLexRules:Z

.field protected syntacticPredLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    .line 25
    iput-boolean v0, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    .line 33
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method


# virtual methods
.method public gen()V
    .locals 3

    .line 42
    :try_start_0
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    iget-object v0, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 62
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 64
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lantlr/DiagnosticCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    goto :goto_1

    .line 44
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 47
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 48
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 49
    iget-object v2, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 52
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 54
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1}, Lantlr/Tool;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Exiting due to errors."

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 1

    .line 79
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "ACTION: "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 84
    iget-object p1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_printAction(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 1

    .line 92
    const-string v0, "Start of alternative block."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 94
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 96
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "Warning: This alternative block is non-deterministic"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 101
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 0

    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 2

    .line 117
    const-string v0, "Match character "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "NOT "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 125
    :cond_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Match character range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 136
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 142
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Generating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    .line 150
    invoke-virtual {p0}, Lantlr/DiagnosticCodeGenerator;->genHeader()V

    .line 153
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 154
    const-string v2, "*** Lexer Preamble Action."

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 155
    const-string v2, "This action will appear before the declaration of your lexer class:"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 156
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 157
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 158
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 159
    const-string v2, "*** End of Lexer Preamble Action"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "*** Your lexer class is called \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' and is a subclass of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 167
    const-string v2, "*** User-defined lexer  class members:"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 168
    const-string v2, "These are the member declarations that you defined for your class:"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 169
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 170
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 171
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 172
    const-string v2, "*** End of user-defined lexer class members"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 176
    const-string v2, "*** String literals used in the parser"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 177
    const-string v2, "The following string literals were used in the parser."

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 178
    const-string v2, "An actual code generator would arrange to place these literals"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 179
    const-string v2, "into a table in the generated lexer, so that actions in the"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 180
    const-string v2, "generated lexer could match token text against the literals."

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 181
    const-string v2, "String literals used in the lexer are not listed here, as they"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 182
    const-string v2, "are incorporated into the mainstream lexer processing."

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 183
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 185
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSymbols()Ljava/util/Enumeration;

    move-result-object v2

    .line 186
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 195
    const-string v2, "*** End of string literals used by the parser"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lantlr/DiagnosticCodeGenerator;->genNextToken()V

    .line 203
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 204
    const-string v2, "*** User-defined Lexer rules:"

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 205
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 207
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 208
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v2, v0

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 216
    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 217
    const-string v0, "*** End User-defined Lexer rules:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 222
    iput-boolean p1, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    return-void

    .line 209
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 210
    iget-object v4, v2, Lantlr/GrammarSymbol;->id:Ljava/lang/String;

    const-string v5, "mnextToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lantlr/DiagnosticCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_1

    .line 187
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/GrammarSymbol;

    .line 189
    instance-of v4, v3, Lantlr/StringLiteralSymbol;

    if-eqz v4, :cond_0

    .line 190
    check-cast v3, Lantlr/StringLiteralSymbol;

    .line 191
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 1

    .line 229
    const-string v0, "Start ONE-OR-MORE (...)+ block:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 231
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 232
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string v0, "Warning: This one-or-more block is non-deterministic"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 237
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 238
    const-string p1, "End ONE-OR-MORE block."

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 245
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Generating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 249
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 252
    invoke-virtual {p0}, Lantlr/DiagnosticCodeGenerator;->genHeader()V

    .line 255
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 256
    const-string v0, "*** Parser Preamble Action."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 257
    const-string v0, "This action will appear before the declaration of your parser class:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 259
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 260
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 261
    const-string v0, "*** End of Parser Preamble Action"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "*** Your parser class is called \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' and is a subclass of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 269
    const-string v0, "*** User-defined parser class members:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 270
    const-string v0, "These are the member declarations that you defined for your class:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 272
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 274
    const-string v0, "*** End of user-defined parser class members"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 278
    const-string v0, "*** Parser rules:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 282
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 283
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 293
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 294
    const-string v0, "*** End of parser rules"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 297
    const-string p1, "*** End of parser"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 286
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 288
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_0

    .line 289
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/DiagnosticCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 311
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Rule Reference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 312
    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ", assigned to \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ", arguments = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 318
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 321
    const-string v1, "Rule \'"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 326
    :cond_2
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_3

    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' is referenced, but that is not a grammar rule."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_3
    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 333
    iget-object v1, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v1, v1, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 334
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Error: You assigned from Rule \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\', but that rule has no return type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-nez v1, :cond_5

    iget v1, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    if-nez v1, :cond_5

    iget-object v1, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v1, v1, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 340
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Warning: Rule \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' returns a value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 343
    :cond_5
    :goto_0
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Error: Rule \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' accepts no arguments."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 322
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' is referenced, but that rule is not defined."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 323
    const-string p1, "\tPerhaps the rule is misspelled, or you forgot to define it."

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/StringLiteralElement;)V
    .locals 2

    .line 352
    const-string v0, "Match string literal "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 353
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 354
    iget-object v0, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 357
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Match token range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p1, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 368
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 2

    .line 375
    const-string v0, "Match token "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 376
    iget-boolean v0, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "NOT "

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 380
    iget-object v0, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/GrammarAtom;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 383
    :cond_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Tree reference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 394
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Generating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 398
    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 401
    invoke-virtual {p0}, Lantlr/DiagnosticCodeGenerator;->genHeader()V

    .line 404
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 405
    const-string v0, "*** Tree-walker Preamble Action."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 406
    const-string v0, "This action will appear before the declaration of your tree-walker class:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 408
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 409
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 410
    const-string v0, "*** End of tree-walker Preamble Action"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "*** Your tree-walker class is called \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' and is a subclass of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 418
    const-string v0, "*** User-defined tree-walker class members:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 419
    const-string v0, "These are the member declarations that you defined for your class:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 421
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 422
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 423
    const-string v0, "*** End of user-defined tree-walker class members"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 427
    const-string v0, "*** tree-walker rules:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 428
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 431
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 432
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 442
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 443
    const-string v0, "*** End of tree-walker rules"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 446
    const-string p1, "*** End of tree-walker"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 433
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 435
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 437
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_0

    .line 438
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/DiagnosticCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 455
    const-string v0, "Match wildcard"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ", label = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 459
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 1

    .line 466
    const-string v0, "Start ZERO-OR-MORE (...)+ block:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 467
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 468
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 469
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const-string v0, "Warning: This zero-or-more block is non-deterministic"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 474
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 475
    const-string p1, "End ZERO-OR-MORE block."

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;)V
    .locals 2

    .line 480
    iget-object v0, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 481
    :goto_0
    instance-of v1, v0, Lantlr/BlockEndElement;

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AST will be built as: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object p1

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {v0}, Lantlr/GrammarElement;->generate()V

    .line 482
    iget-object v0, v0, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_0
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 2

    .line 498
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Init action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;)V
    .locals 6

    .line 509
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 511
    :goto_0
    const-string v3, "Start of an alternative block."

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 512
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v3, v2

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 513
    const-string v3, "The lookahead set for this block is:"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 514
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v3, v2

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 515
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->genLookaheadSetForBlock(Lantlr/AlternativeBlock;)V

    .line 516
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v3, v2

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    if-eqz v0, :cond_1

    .line 519
    const-string v3, "This block has a single alternative"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v3

    iget-object v3, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v3, :cond_2

    .line 522
    const-string v3, "Warning: you specified a syntactic predicate for this alternative,"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 523
    const-string v3, "and it is the only alternative of a block and will be ignored."

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 527
    :cond_1
    const-string v3, "This block has multiple alternatives:"

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 528
    iget v3, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v3, v2

    iput v3, p0, Lantlr/CodeGenerator;->tabs:I

    .line 531
    :cond_2
    :goto_1
    iget-object v3, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    const-string v4, ""

    if-lt v1, v3, :cond_4

    .line 580
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 581
    const-string p1, "OTHERWISE, a NoViableAlt exception will be thrown"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 585
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 586
    const-string p1, "End of alternatives"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 588
    :cond_3
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 589
    const-string p1, "End of alternative block."

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 532
    :cond_4
    invoke-virtual {p1, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v3

    .line 533
    iget-object v5, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 536
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 538
    const-string v4, "Otherwise, "

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 541
    :cond_5
    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 543
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Alternate("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ") will be taken IF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 544
    const-string v4, "The lookahead set: "

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 545
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 546
    invoke-virtual {p0, v3}, Lantlr/DiagnosticCodeGenerator;->genLookaheadSetForAlt(Lantlr/Alternative;)V

    .line 547
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 548
    iget-object v4, v3, Lantlr/Alternative;->semPred:Ljava/lang/String;

    const-string v5, "is matched."

    if-nez v4, :cond_7

    iget-object v4, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v4, :cond_6

    goto :goto_3

    .line 552
    :cond_6
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 549
    :cond_7
    :goto_3
    const-string v4, "is matched, AND "

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 556
    :goto_4
    iget-object v4, v3, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 557
    const-string v4, "the semantic predicate:"

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 558
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 559
    iget-object v4, v3, Lantlr/Alternative;->semPred:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 560
    iget-object v4, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v4, :cond_8

    .line 561
    const-string v4, "is true, AND "

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 564
    :cond_8
    const-string v4, "is true."

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 569
    :cond_9
    :goto_5
    iget-object v4, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v4, :cond_a

    .line 570
    const-string v4, "the syntactic predicate:"

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 571
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 572
    iget-object v4, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {p0, v4}, Lantlr/DiagnosticCodeGenerator;->genSynPred(Lantlr/SynPredBlock;)V

    .line 573
    iget v4, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr v4, v2

    iput v4, p0, Lantlr/CodeGenerator;->tabs:I

    .line 574
    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 578
    :cond_a
    invoke-virtual {p0, v3}, Lantlr/DiagnosticCodeGenerator;->genAlt(Lantlr/Alternative;)V

    goto/16 :goto_1
.end method

.method public genFollowSetForRuleBlock(Lantlr/RuleBlock;)V
    .locals 2

    .line 597
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object p1, p1, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    invoke-virtual {p0, v0, v1, p1}, Lantlr/DiagnosticCodeGenerator;->printSet(IILantlr/Lookahead;)V

    return-void
.end method

.method protected genHeader()V
    .locals 3

    .line 603
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ANTLR-generated file resulting from grammar "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 604
    const-string v0, "Diagnostic output"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 606
    const-string v1, "Terence Parr, MageLang Institute"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 607
    const-string v1, "with John Lilley, Empathy Software"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 608
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "ANTLR Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v2, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; 1996,1997"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 610
    const-string v1, "*** Header Action."

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 611
    const-string v1, "This action will appear at the top of all generated files."

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 612
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 613
    iget-object v1, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    invoke-virtual {v1, v0}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    .line 614
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 615
    const-string v1, "*** End of Header Action"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genLookaheadSetForAlt(Lantlr/Alternative;)V
    .locals 3

    .line 621
    iget-boolean v0, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const-string p1, "MATCHES ALL"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 625
    :cond_0
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 629
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_1
    :goto_0
    if-le v1, v0, :cond_2

    return-void

    .line 632
    :cond_2
    iget-object v2, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v2, v2, v1

    .line 633
    invoke-virtual {p0, v0, v1, v2}, Lantlr/DiagnosticCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public genLookaheadSetForBlock(Lantlr/AlternativeBlock;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 644
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    :goto_1
    move v3, v1

    goto :goto_2

    .line 645
    :cond_0
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 646
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 647
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget v1, v0, Lantlr/Grammar;->maxk:I

    goto :goto_1

    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-le v0, v3, :cond_1

    return-void

    .line 656
    :cond_1
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, v0, p1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v1

    .line 657
    invoke-virtual {p0, v3, v0, v1}, Lantlr/DiagnosticCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 650
    :cond_2
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    if-ge v1, v3, :cond_3

    .line 651
    iget v1, v2, Lantlr/Alternative;->lookaheadDepth:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public genNextToken()V
    .locals 3

    .line 666
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 667
    const-string v1, "*** Lexer nextToken rule:"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 668
    const-string v1, "The lexer nextToken rule is synthesized from all of the user-defined"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 669
    const-string v1, "lexer rules.  It logically consists of one big alternative block with"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 670
    const-string v1, "each user-defined rule being an alternative."

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v2, "nextToken"

    invoke-static {v0, v1, v2}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v0

    .line 678
    new-instance v1, Lantlr/RuleSymbol;

    const-string v2, "mnextToken"

    invoke-direct {v1, v2}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v1}, Lantlr/RuleSymbol;->setDefined()V

    .line 680
    invoke-virtual {v1, v0}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    .line 681
    const-string v2, "private"

    iput-object v2, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v1}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 685
    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, v0}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const-string v1, "The grammar analyzer has determined that the synthesized"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 687
    const-string v1, "nextToken rule is non-deterministic (i.e., it has ambiguities)"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 688
    const-string v1, "This means that there is some overlap of the character"

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 689
    const-string v1, "lookahead for two or more of your lexer rules."

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 692
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/DiagnosticCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 694
    const-string v0, "*** End of nextToken lexer rule."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;)V
    .locals 10

    .line 701
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 702
    iget-boolean v1, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-eqz v1, :cond_0

    const-string v1, "Lexer"

    goto :goto_0

    :cond_0
    const-string v1, "Parser"

    .line 703
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "*** "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Rule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    const-string v4, "*** End "

    if-nez v2, :cond_1

    .line 705
    const-string v0, "This rule is undefined."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 706
    const-string v0, "This means that the rule was referenced somewhere in the grammar,"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 707
    const-string v0, "but a definition for the rule was not encountered."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 708
    const-string v0, "It is also possible that syntax errors during the parse of"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 709
    const-string v0, "your grammar file prevented correct processing of the rule."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 710
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 713
    :cond_1
    iget v2, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CodeGenerator;->tabs:I

    .line 715
    iget-object v2, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Access: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 720
    :cond_2
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v2

    .line 723
    iget-object v5, v2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 724
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Return value(s): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 725
    iget-boolean v5, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-eqz v5, :cond_5

    .line 726
    const-string v5, "Error: you specified return value(s) for a lexical rule."

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 727
    const-string v5, "\tLexical rules have an implicit return type of \'int\'."

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_3
    iget-boolean v5, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-eqz v5, :cond_4

    .line 732
    const-string v5, "Return value: lexical rule returns an implicit token type"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 735
    :cond_4
    const-string v5, "Return value: none"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 740
    :cond_5
    :goto_1
    iget-object v5, v2, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 741
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Arguments: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 745
    :cond_6
    invoke-virtual {p0, v2}, Lantlr/DiagnosticCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 748
    iget-object v5, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v5, v2}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 750
    const-string v5, "Error: This rule is non-deterministic"

    invoke-virtual {p0, v5}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 754
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/DiagnosticCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 757
    invoke-virtual {v2, v0}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 761
    const-string v6, "You specified error-handler(s) for this rule:"

    invoke-virtual {p0, v6}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 762
    iget v6, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v6, 0x0

    .line 763
    :goto_2
    iget-object v7, v5, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_8

    .line 772
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 773
    const-string v0, "End error-handlers."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_9

    .line 765
    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 768
    :cond_9
    iget-object v7, v5, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v7, v6}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lantlr/ExceptionHandler;

    .line 769
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Error-handler("

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ") catches ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v7, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {v9}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] and executes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 770
    iget-object v7, v7, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v7}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CodeGenerator;->printAction(Ljava/lang/String;)V

    goto :goto_2

    .line 775
    :cond_a
    iget-boolean v0, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-nez v0, :cond_b

    .line 776
    const-string v0, "Default error-handling will be generated, which catches all"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 777
    const-string v0, "parser exceptions and consumes tokens until the follow-set is seen."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 782
    :cond_b
    :goto_3
    iget-boolean v0, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-nez v0, :cond_c

    .line 783
    const-string v0, "The follow set for this rule is:"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 784
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 785
    invoke-virtual {p0, v2}, Lantlr/DiagnosticCodeGenerator;->genFollowSetForRuleBlock(Lantlr/RuleBlock;)V

    .line 786
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 789
    :cond_c
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/GrammarSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;)V
    .locals 1

    .line 798
    iget v0, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    .line 799
    invoke-virtual {p0, p1}, Lantlr/DiagnosticCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 800
    iget p1, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/DiagnosticCodeGenerator;->syntacticPredLevel:I

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Generating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 809
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 812
    invoke-virtual {p0}, Lantlr/DiagnosticCodeGenerator;->genHeader()V

    .line 816
    const-string v0, ""

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 817
    const-string v0, "*** Tokens used by the parser"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 818
    const-string v0, "This is a list of the token numeric values and the corresponding"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 819
    const-string v0, "token identifiers.  Some tokens are literals, and because of that"

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 820
    const-string v0, "they have no identifiers.  Literals are double-quoted."

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 821
    iget v0, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 824
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p1

    const/4 v0, 0x4

    .line 825
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 833
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 834
    const-string p1, "*** End of tokens used by the parser"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 837
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 838
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void

    .line 826
    :cond_0
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 828
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 852
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 1

    .line 845
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "***Create an AST from a vector here***"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public printSet(IILantlr/Lookahead;)V
    .locals 6

    .line 881
    iget-object p3, p3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p3}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 884
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "k=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ": {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_0
    const-string p1, "{ "

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 889
    :goto_0
    array-length p1, p3

    const-string p2, ""

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 890
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 891
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    add-int/2addr p1, v0

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 892
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    .line 896
    :goto_1
    array-length v4, p3

    if-lt v2, v4, :cond_3

    .line 914
    array-length p1, p3

    if-le p1, v1, :cond_2

    .line 915
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 916
    iget p1, p0, Lantlr/CodeGenerator;->tabs:I

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/CodeGenerator;->tabs:I

    .line 917
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 919
    :cond_2
    const-string p1, " }"

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/2addr v3, v0

    if-le v3, v1, :cond_4

    .line 899
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->_println(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0, p2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    move v3, p1

    .line 903
    :cond_4
    iget-boolean v4, p0, Lantlr/DiagnosticCodeGenerator;->doingLexRules:Z

    if-eqz v4, :cond_5

    .line 904
    iget-object v4, p0, Lantlr/CodeGenerator;->charFormatter:Lantlr/CharFormatter;

    aget v5, p3, v2

    invoke-interface {v4, v5}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 907
    :cond_5
    iget-object v4, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v4

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    .line 909
    :goto_2
    array-length v4, p3

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_6

    .line 910
    const-string v4, ", "

    invoke-virtual {p0, v4}, Lantlr/CodeGenerator;->_print(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
