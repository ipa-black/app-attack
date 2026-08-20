.class public Lantlr/LLkAnalyzer;
.super Ljava/lang/Object;
.source "LLkAnalyzer.java"

# interfaces
.implements Lantlr/LLkGrammarAnalyzer;


# instance fields
.field public DEBUG_ANALYZER:Z

.field charFormatter:Lantlr/CharFormatter;

.field private currentBlock:Lantlr/AlternativeBlock;

.field protected grammar:Lantlr/Grammar;

.field protected lexicalAnalysis:Z

.field protected tool:Lantlr/Tool;


# direct methods
.method public constructor <init>(Lantlr/Tool;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    .line 26
    iput-object v1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    .line 28
    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    .line 30
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    .line 34
    iput-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    return-void
.end method

.method private getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;
    .locals 1

    .line 478
    invoke-virtual {p1, p2}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object p1

    .line 479
    iget-object p2, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 481
    iget-object v0, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p2, p3}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p2

    .line 483
    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aput-object p2, p1, p3

    goto :goto_0

    .line 486
    :cond_0
    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object p2, p1, p3

    :goto_0
    return-object p2
.end method

.method public static lookaheadEquivForApproxAndFullAnalysis([Lantlr/Lookahead;I)Z
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-le v1, v2, :cond_0

    return v0

    .line 968
    :cond_0
    aget-object v2, p0, v1

    iget-object v2, v2, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 969
    invoke-virtual {v2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v2

    if-le v2, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V
    .locals 2

    .line 986
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v0, Lantlr/AlternativeBlock;->analysisAlt:I

    invoke-virtual {v0, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 988
    instance-of v1, v0, Lantlr/TreeElement;

    if-eqz v1, :cond_0

    .line 989
    check-cast v0, Lantlr/TreeElement;

    iget-object v0, v0, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    if-eq v0, p2, :cond_1

    return-void

    :cond_0
    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 996
    :goto_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v0, v0, Lantlr/AlternativeBlock;->analysisAlt:I

    if-lt p2, v0, :cond_2

    return-void

    .line 997
    :cond_2
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    invoke-virtual {v0, p2}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    const/4 v1, 0x1

    .line 998
    invoke-virtual {v0, v1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v0

    iget-object v0, v0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1, v0}, Lantlr/collections/impl/BitSet;->subtractInPlace(Lantlr/collections/impl/BitSet;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private removeCompetingPredictionSetsFromWildcard([Lantlr/Lookahead;Lantlr/AlternativeElement;I)V
    .locals 3

    const/4 p2, 0x1

    :goto_0
    if-le p2, p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1011
    :goto_1
    iget-object v1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v1, Lantlr/AlternativeBlock;->analysisAlt:I

    if-lt v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    invoke-virtual {v1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1013
    aget-object v2, p1, p2

    iget-object v2, v2, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, p2}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v1

    iget-object v1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/BitSet;->subtractInPlace(Lantlr/collections/impl/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1020
    iput-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    const/4 v1, 0x0

    .line 1021
    iput-boolean v1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    .line 1022
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 1023
    iput-boolean v1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    return-void
.end method


# virtual methods
.method public FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 371
    iget-object v3, v2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    check-cast v3, Lantlr/RuleBlock;

    .line 374
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    .line 381
    :goto_0
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v5, ","

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "FOLLOW("

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    :cond_1
    iget-object v4, v2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    .line 385
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "FOLLOW cycle to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_2
    new-instance v1, Lantlr/Lookahead;

    invoke-direct {v1, v3}, Lantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 390
    :cond_3
    iget-object v4, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    const-string v6, ": "

    const-string v7, ") for "

    if-eqz v4, :cond_7

    .line 391
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_4

    .line 392
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "cache entry FOLLOW("

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v6, v6, v1

    iget-object v7, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v8, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v6, v5, v7, v8}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_4
    iget-object v3, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v1

    iget-object v3, v3, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 396
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 399
    :cond_5
    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v4, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    iget-object v4, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 400
    invoke-virtual {v3}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v3

    iget-object v3, v3, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    .line 403
    iget-object v4, v3, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    if-nez v4, :cond_6

    .line 405
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 413
    :cond_6
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    iget-object v4, v3, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 415
    iget-object v2, v3, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 419
    :cond_7
    iget-object v4, v2, Lantlr/BlockEndElement;->lock:[Z

    const/4 v8, 0x1

    aput-boolean v8, v4, v1

    .line 421
    new-instance v4, Lantlr/Lookahead;

    invoke-direct {v4}, Lantlr/Lookahead;-><init>()V

    .line 423
    iget-object v9, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v9, v3}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v9

    check-cast v9, Lantlr/RuleSymbol;

    const/4 v10, 0x0

    move v11, v10

    .line 426
    :goto_1
    invoke-virtual {v9}, Lantlr/RuleSymbol;->numReferences()I

    move-result v12

    if-lt v11, v12, :cond_c

    .line 443
    iget-object v9, v2, Lantlr/BlockEndElement;->lock:[Z

    aput-boolean v10, v9, v1

    .line 447
    iget-object v9, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v9}, Lantlr/collections/impl/BitSet;->nil()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 448
    iget-object v9, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    instance-of v10, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v10, :cond_8

    .line 451
    iget-object v8, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lantlr/collections/impl/BitSet;->add(I)V

    goto :goto_2

    .line 453
    :cond_8
    instance-of v9, v9, Lantlr/LexerGrammar;

    if-eqz v9, :cond_9

    .line 460
    invoke-virtual {v4}, Lantlr/Lookahead;->setEpsilon()V

    goto :goto_2

    .line 463
    :cond_9
    iget-object v9, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v9, v8}, Lantlr/collections/impl/BitSet;->add(I)V

    .line 468
    :cond_a
    :goto_2
    iget-boolean v8, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v8, :cond_b

    .line 469
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "saving FOLLOW("

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v7, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v5, v6, v7}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    :cond_b
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    invoke-virtual {v4}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/Lookahead;

    aput-object v3, v2, v1

    return-object v4

    .line 427
    :cond_c
    invoke-virtual {v9, v11}, Lantlr/RuleSymbol;->getReference(I)Lantlr/RuleRefElement;

    move-result-object v12

    .line 428
    iget-boolean v13, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v14, "] is "

    if-eqz v13, :cond_d

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    const-string v8, "next["

    invoke-direct {v15, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v15, v12, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v15}, Lantlr/GrammarElement;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_d
    iget-object v8, v12, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v8, v1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v8

    .line 430
    iget-boolean v12, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v12, :cond_e

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuffer;

    const-string v15, "FIRST of next["

    invoke-direct {v13, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v15, "] ptr is "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v8}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    :cond_e
    iget-object v12, v8, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v12, :cond_f

    iget-object v12, v8, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x0

    .line 436
    iput-object v12, v8, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    .line 439
    :cond_f
    invoke-virtual {v4, v8}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    .line 440
    iget-boolean v8, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v8, :cond_10

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "combined FOLLOW["

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v4}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method protected altUsesWildcardDefault(Lantlr/Alternative;)Z
    .locals 2

    .line 41
    iget-object p1, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 43
    instance-of v0, p1, Lantlr/TreeElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lantlr/TreeElement;

    iget-object v0, v0, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    instance-of p1, p1, Lantlr/BlockEndElement;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public deterministic(Lantlr/AlternativeBlock;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 59
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "deterministic("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v1, v9, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    .line 62
    iget-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 64
    iput-object v9, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 67
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedy:Z

    if-nez v1, :cond_1

    instance-of v1, v9, Lantlr/OneOrMoreBlock;

    if-nez v1, :cond_1

    instance-of v1, v9, Lantlr/ZeroOrMoreBlock;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getLine()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v4

    const-string v5, "Being nongreedy only makes sense for (...)+ and (...)*"

    invoke-virtual {v1, v5, v2, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    .line 75
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 76
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v12, v2, Lantlr/AlternativeBlock;->alti:I

    .line 77
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    iget-object v2, v2, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {v1, v13}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v1

    aput-object v1, v2, v13

    .line 78
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iput v13, v1, Lantlr/Alternative;->lookaheadDepth:I

    .line 79
    iput-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return v13

    :cond_2
    move v14, v12

    move v1, v13

    :goto_0
    add-int/lit8 v2, v10, -0x1

    if-lt v14, v2, :cond_3

    .line 223
    iput-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return v1

    .line 85
    :cond_3
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v14, v2, Lantlr/AlternativeBlock;->alti:I

    .line 86
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v14, v2, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 87
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    add-int/lit8 v15, v14, 0x1

    iput v15, v2, Lantlr/AlternativeBlock;->altj:I

    move v8, v15

    :goto_1
    if-lt v8, v10, :cond_4

    move v14, v15

    goto :goto_0

    .line 92
    :cond_4
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v8, v2, Lantlr/AlternativeBlock;->altj:I

    .line 93
    iget-boolean v2, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "comparing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " against alt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_5
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v8, v2, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 99
    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    add-int/2addr v2, v13

    new-array v6, v2, [Lantlr/Lookahead;

    move v2, v13

    .line 103
    :goto_2
    iget-boolean v3, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "checking depth "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_6
    invoke-direct {v0, v9, v14, v2}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v3

    .line 106
    invoke-direct {v0, v9, v8, v2}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v4

    .line 110
    iget-boolean v5, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v7, ","

    if-eqz v5, :cond_7

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "p is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    move/from16 v16, v1

    iget-object v1, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3, v7, v13, v1}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move/from16 v16, v1

    .line 111
    :goto_3
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v12, "q is "

    invoke-direct {v5, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v13, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v7, v12, v13}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    :cond_8
    invoke-virtual {v3, v4}, Lantlr/Lookahead;->intersection(Lantlr/Lookahead;)Lantlr/Lookahead;

    move-result-object v1

    aput-object v1, v6, v2

    .line 114
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "intersection at depth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v6, v2

    invoke-virtual {v4}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    :cond_9
    aget-object v1, v6, v2

    invoke-virtual {v1}, Lantlr/Lookahead;->nil()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_c

    .line 120
    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    if-le v2, v3, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v1, v16

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    .line 122
    :cond_c
    :goto_5
    invoke-virtual {v9, v14}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v3

    .line 123
    invoke-virtual {v9, v8}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v4

    if-eqz v1, :cond_15

    const v1, 0x7fffffff

    .line 126
    iput v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    .line 127
    iput v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    .line 135
    iget-object v1, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    const-string v2, "alt "

    if-eqz v1, :cond_e

    .line 136
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_d

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " has a syn pred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    :goto_6
    move v12, v8

    goto/16 :goto_7

    .line 150
    :cond_e
    iget-object v1, v3, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 151
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_d

    .line 152
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " has a sem pred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 160
    :cond_f
    invoke-virtual {v0, v4}, Lantlr/LLkAnalyzer;->altUsesWildcardDefault(Lantlr/Alternative;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6

    .line 170
    :cond_10
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    if-nez v1, :cond_11

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_d

    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_11

    goto :goto_6

    .line 180
    :cond_11
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    if-nez v1, :cond_12

    goto :goto_6

    .line 184
    :cond_12
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedySet:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedy:Z

    if-eqz v1, :cond_14

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_13

    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_d

    :cond_13
    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_14

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_14

    goto :goto_6

    .line 195
    :cond_14
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->errorHandler:Lantlr/ToolErrorHandler;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    iget v5, v2, Lantlr/Grammar;->maxk:I

    move-object/from16 v3, p1

    move v7, v14

    move v12, v8

    invoke-interface/range {v1 .. v8}, Lantlr/ToolErrorHandler;->warnAltAmbiguity(Lantlr/Grammar;Lantlr/AlternativeBlock;ZI[Lantlr/Lookahead;II)V

    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_15
    move v12, v8

    .line 208
    iget v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    .line 209
    iget v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    move/from16 v1, v16

    :goto_8
    add-int/lit8 v8, v12, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1
.end method

.method public deterministic(Lantlr/OneOrMoreBlock;)Z
    .locals 3

    .line 231
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "deterministic(...)+("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 233
    iput-object p1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 234
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v1

    .line 237
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z

    move-result p1

    .line 238
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deterministic(Lantlr/ZeroOrMoreBlock;)Z
    .locals 3

    .line 246
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "deterministic(...)*("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 248
    iput-object p1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 249
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v1

    .line 252
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z

    move-result p1

    .line 253
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 264
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    .line 266
    iget-object v1, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    const/4 v2, -0x1

    iput v2, v1, Lantlr/AlternativeBlock;->altj:I

    .line 268
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deterministicImpliedPath"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x1

    move v1, v11

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v9, :cond_1

    return v1

    .line 270
    :cond_1
    invoke-virtual {v8, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 272
    iget-object v3, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v3, v3, Lantlr/BlockEndElement;

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v4, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getLine()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v6

    const-string v7, "empty alternative makes no sense in (...)* or (...)+"

    invoke-virtual {v3, v7, v4, v5, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 279
    :cond_2
    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    add-int/2addr v3, v11

    new-array v6, v3, [Lantlr/Lookahead;

    move v3, v11

    .line 283
    :cond_3
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "checking depth "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "<="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v7, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    :cond_4
    iget-object v4, v8, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v4, v3}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v4

    .line 286
    iget-object v5, v8, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    aput-object v4, v5, v3

    .line 287
    iget-object v5, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v12, v5, Lantlr/AlternativeBlock;->alti:I

    .line 288
    invoke-direct {v0, v8, v12, v3}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v5

    .line 290
    iget-boolean v7, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v13, ","

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "follow is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v10, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v13, v15, v10}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :cond_5
    iget-boolean v7, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v14, "p is "

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v15, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v5, v13, v14, v15}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :cond_6
    invoke-virtual {v4, v5}, Lantlr/Lookahead;->intersection(Lantlr/Lookahead;)Lantlr/Lookahead;

    move-result-object v4

    aput-object v4, v6, v3

    .line 294
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_7

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "intersection at depth "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_7
    aget-object v4, v6, v3

    invoke-virtual {v4}, Lantlr/Lookahead;->nil()Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    .line 300
    iget-object v5, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    if-le v3, v5, :cond_3

    :cond_9
    if-eqz v4, :cond_10

    const v1, 0x7fffffff

    .line 304
    iput v1, v2, Lantlr/Alternative;->lookaheadDepth:I

    .line 305
    iput v1, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    .line 306
    iget-object v1, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v1, Lantlr/AlternativeBlock;->alti:I

    invoke-virtual {v8, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 311
    iget-boolean v2, v8, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    if-nez v2, :cond_b

    :cond_a
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 317
    :cond_b
    iget-boolean v2, v8, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    if-nez v2, :cond_c

    goto :goto_2

    .line 321
    :cond_c
    iget-boolean v2, v8, Lantlr/AlternativeBlock;->greedy:Z

    if-ne v2, v11, :cond_d

    iget-boolean v2, v8, Lantlr/AlternativeBlock;->greedySet:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v2, v2, Lantlr/BlockEndElement;

    if-nez v2, :cond_d

    .line 323
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "greedy loop"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 330
    :cond_d
    iget-boolean v2, v8, Lantlr/AlternativeBlock;->greedy:Z

    if-nez v2, :cond_f

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_f

    .line 332
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_e

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "nongreedy loop"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    :cond_e
    iget-object v1, v8, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    invoke-static {v1, v2}, Lantlr/LLkAnalyzer;->lookaheadEquivForApproxAndFullAnalysis([Lantlr/Lookahead;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 338
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "nongreedy block may exit incorrectly due"

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const-string v3, "\tto limitations of linear approximate lookahead (first k-1 sets"

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, "\tin lookahead not singleton)."

    aput-object v4, v2, v3

    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lantlr/GrammarElement;->getColumn()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lantlr/Tool;->warning([Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_f
    const/4 v10, 0x0

    .line 348
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->errorHandler:Lantlr/ToolErrorHandler;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    iget v5, v2, Lantlr/Grammar;->maxk:I

    move-object/from16 v3, p1

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lantlr/ToolErrorHandler;->warnAltExitAmbiguity(Lantlr/Grammar;Lantlr/BlockWithImpliedExitPath;ZI[Lantlr/Lookahead;I)V

    :goto_3
    move v1, v10

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    .line 359
    iget v4, v2, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Lantlr/Alternative;->lookaheadDepth:I

    .line 360
    iget v2, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public look(ILantlr/ActionElement;)Lantlr/Lookahead;
    .locals 3

    .line 493
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookAction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    :cond_0
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;
    .locals 8

    .line 499
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookAltBlk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 501
    iput-object p2, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 502
    new-instance v1, Lantlr/Lookahead;

    invoke-direct {v1}, Lantlr/Lookahead;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 503
    :goto_0
    iget-object v4, p2, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 517
    iget-boolean p1, p2, Lantlr/AlternativeBlock;->not:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    invoke-virtual {p0, p2, p1}, Lantlr/LLkAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 519
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz p1, :cond_2

    .line 520
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    .line 521
    iget-object p2, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p2

    .line 522
    :goto_1
    array-length v3, p2

    if-lt v2, v3, :cond_1

    .line 525
    iput-object p1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    goto :goto_2

    .line 523
    :cond_1
    aget v3, p2, v2

    invoke-virtual {p1, v3}, Lantlr/collections/impl/BitSet;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    :cond_2
    iget-object p1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    iget-object p2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->maxTokenType()I

    move-result p2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 531
    :cond_3
    :goto_2
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return-object v1

    .line 504
    :cond_4
    iget-boolean v4, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v5, "alt "

    if-eqz v4, :cond_5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    :cond_5
    iget-object v4, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v3, v4, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 507
    invoke-virtual {p2, v3}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v4

    .line 508
    iget-object v6, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 509
    iget-boolean v7, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v7, :cond_6

    .line 510
    iget-object v7, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    iget-object v4, v4, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    if-ne v7, v4, :cond_6

    .line 511
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " is empty"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    :cond_6
    invoke-virtual {v6, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v4

    .line 515
    invoke-virtual {v1, v4}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public look(ILantlr/BlockEndElement;)Lantlr/Lookahead;
    .locals 3

    .line 548
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookBlockEnd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "); lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v0, p2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 554
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1}, Lantlr/Lookahead;-><init>()V

    return-object p1

    .line 560
    :cond_1
    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/ZeroOrMoreBlock;

    if-nez v0, :cond_3

    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/OneOrMoreBlock;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    new-instance v0, Lantlr/Lookahead;

    invoke-direct {v0}, Lantlr/Lookahead;-><init>()V

    goto :goto_1

    .line 565
    :cond_3
    :goto_0
    iget-object v0, p2, Lantlr/BlockEndElement;->lock:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 566
    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p0, p1, v0}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v0

    .line 567
    iget-object v1, p2, Lantlr/BlockEndElement;->lock:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 578
    :goto_1
    iget-object v1, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v1, v1, Lantlr/TreeElement;

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    .line 579
    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    goto :goto_2

    .line 589
    :cond_4
    iget-object v1, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v1, v1, Lantlr/SynPredBlock;

    if-eqz v1, :cond_5

    .line 590
    invoke-virtual {v0}, Lantlr/Lookahead;->setEpsilon()V

    goto :goto_2

    .line 595
    :cond_5
    iget-object p2, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    .line 596
    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    :goto_2
    return-object v0
.end method

.method public look(ILantlr/CharLiteralElement;)Lantlr/Lookahead;
    .locals 3

    .line 622
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookCharLiteral("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 625
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 627
    :cond_1
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz p1, :cond_5

    .line 628
    iget-boolean p1, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz p1, :cond_4

    .line 629
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    .line 630
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "charVocab is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    :cond_2
    invoke-direct {p0, p1, p2}, Lantlr/LLkAnalyzer;->removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V

    .line 633
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "charVocab after removal of prior alt lookahead "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 635
    :cond_3
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Lantlr/collections/impl/BitSet;->clear(I)V

    .line 636
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2

    .line 639
    :cond_4
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 644
    :cond_5
    iget-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const-string v0, "Character literal reference found in parser"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/CharRangeElement;)Lantlr/Lookahead;
    .locals 3

    .line 651
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookCharRange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 654
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 656
    :cond_1
    iget-char p1, p2, Lantlr/CharRangeElement;->begin:C

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    .line 657
    iget-char v1, p2, Lantlr/CharRangeElement;->begin:C

    add-int/2addr v1, v0

    :goto_0
    iget-char v0, p2, Lantlr/CharRangeElement;->end:C

    if-le v1, v0, :cond_2

    .line 660
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2

    .line 658
    :cond_2
    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public look(ILantlr/GrammarAtom;)Lantlr/Lookahead;
    .locals 3

    .line 664
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "look("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    :cond_0
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const-string v1, "token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 672
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 674
    :cond_2
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 675
    iget-boolean v0, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    .line 678
    iget-object v1, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 680
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-direct {p0, v0, p2}, Lantlr/LLkAnalyzer;->removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V

    :cond_3
    return-object p1
.end method

.method public look(ILantlr/OneOrMoreBlock;)Lantlr/Lookahead;
    .locals 3

    .line 690
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "look+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleBlock;)Lantlr/Lookahead;
    .locals 3

    .line 701
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookRuleBlk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleEndElement;)Lantlr/Lookahead;
    .locals 3

    .line 733
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    .line 734
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookRuleBlockEnd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "); noFOLLOW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p2, Lantlr/RuleEndElement;->noFOLLOW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 736
    :cond_0
    iget-boolean v0, p2, Lantlr/RuleEndElement;->noFOLLOW:Z

    if-eqz v0, :cond_1

    .line 737
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2}, Lantlr/Lookahead;-><init>()V

    .line 738
    invoke-virtual {p2}, Lantlr/Lookahead;->setEpsilon()V

    .line 739
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    iput-object p1, p2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    return-object p2

    .line 742
    :cond_1
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleRefElement;)Lantlr/Lookahead;
    .locals 6

    .line 763
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookRuleRef("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v1, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-eqz v0, :cond_7

    .line 765
    iget-boolean v1, v0, Lantlr/RuleSymbol;->defined:Z

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 769
    :cond_1
    invoke-virtual {v0}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 770
    iget-object v0, v0, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    .line 771
    iget-boolean v1, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    const/4 v2, 0x1

    .line 772
    iput-boolean v2, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    .line 774
    iget-object v2, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lantlr/LLkAnalyzer;->look(ILjava/lang/String;)Lantlr/Lookahead;

    move-result-object v2

    .line 775
    iget-boolean v3, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "back from rule ref to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 777
    :cond_2
    iput-boolean v1, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    .line 780
    iget-object v0, v2, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "infinite recursion to rule "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " from rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p2, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result v4

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 786
    :cond_3
    invoke-virtual {v2}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 787
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_4

    .line 788
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "rule ref to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " has eps, depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    :cond_4
    invoke-virtual {v2}, Lantlr/Lookahead;->resetEpsilon()V

    .line 796
    iget-object v0, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 797
    iput-object v1, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x0

    .line 798
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_5

    goto :goto_1

    .line 799
    :cond_5
    aget v3, v0, v1

    sub-int v3, p1, v3

    sub-int v3, p1, v3

    .line 800
    iget-object v4, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v4, v3}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object v3

    .line 801
    invoke-virtual {v2, v3}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v2

    .line 766
    :cond_7
    :goto_2
    iget-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "no definition of rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/GrammarElement;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/GrammarElement;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 767
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1}, Lantlr/Lookahead;-><init>()V

    return-object p1
.end method

.method public look(ILantlr/StringLiteralElement;)Lantlr/Lookahead;
    .locals 3

    .line 811
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookStringLiteral("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 812
    :cond_0
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 815
    iget-object v0, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    iget-object p2, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 819
    :cond_1
    iget-object p2, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_2
    if-le p1, v1, :cond_3

    .line 825
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 827
    :cond_3
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 828
    iget-boolean p2, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz p2, :cond_4

    .line 830
    iget-object p2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->maxTokenType()I

    move-result p2

    .line 831
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    :cond_4
    return-object p1
.end method

.method public look(ILantlr/SynPredBlock;)Lantlr/Lookahead;
    .locals 3

    .line 844
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "look=>("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    :cond_0
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/TokenRangeElement;)Lantlr/Lookahead;
    .locals 3

    .line 849
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "lookTokenRange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 852
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 854
    :cond_1
    iget p1, p2, Lantlr/TokenRangeElement;->begin:I

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    .line 855
    iget v1, p2, Lantlr/TokenRangeElement;->begin:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p2, Lantlr/TokenRangeElement;->end:I

    if-le v1, v0, :cond_2

    .line 858
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2

    .line 856
    :cond_2
    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public look(ILantlr/TreeElement;)Lantlr/Lookahead;
    .locals 3

    .line 862
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    .line 863
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "look("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 865
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 868
    :cond_1
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of p1, p1, Lantlr/WildcardElement;

    if-eqz p1, :cond_2

    .line 869
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p1, v0}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    goto :goto_0

    .line 872
    :cond_2
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 873
    iget-object p2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    iget-boolean p2, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz p2, :cond_3

    .line 875
    iget-object p2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->maxTokenType()I

    move-result p2

    .line 876
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public look(ILantlr/WildcardElement;)Lantlr/Lookahead;
    .locals 5

    .line 883
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v1, ","

    const-string v2, "look("

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 887
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 891
    :cond_1
    iget-boolean v3, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v3, :cond_2

    .line 893
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    goto :goto_0

    .line 896
    :cond_2
    new-instance v3, Lantlr/collections/impl/BitSet;

    invoke-direct {v3, v0}, Lantlr/collections/impl/BitSet;-><init>(I)V

    .line 898
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    const/4 v4, 0x4

    .line 899
    invoke-virtual {v3, v4, v0}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 900
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ") after not: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move-object p1, v3

    .line 906
    :goto_0
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public look(ILantlr/ZeroOrMoreBlock;)Lantlr/Lookahead;
    .locals 3

    .line 913
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "look*("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 914
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v0

    .line 915
    iget-object p2, p2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/GrammarElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    .line 916
    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    return-object v0
.end method

.method public look(ILjava/lang/String;)Lantlr/Lookahead;
    .locals 8

    .line 930
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v1, ","

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "lookRuleName("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 931
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p2}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 932
    invoke-virtual {v0}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 934
    iget-object v2, v0, Lantlr/RuleBlock;->lock:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_2

    .line 935
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz p1, :cond_1

    .line 936
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "infinite recursion to rule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    :cond_1
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1, p2}, Lantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 941
    :cond_2
    iget-object v2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object v2, v2, p1

    const-string v3, " cache: "

    const-string v4, " result in FIRST "

    if-eqz v2, :cond_4

    .line 942
    iget-boolean v2, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v2, :cond_3

    .line 943
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "found depth "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v3, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, p1

    iget-object v4, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v5, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3, v1, v4, v5}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    :cond_3
    iget-object p2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Lookahead;

    return-object p1

    .line 949
    :cond_4
    iget-object v2, v0, Lantlr/RuleBlock;->lock:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, p1

    .line 950
    invoke-virtual {p0, p1, v0}, Lantlr/LLkAnalyzer;->look(ILantlr/RuleBlock;)Lantlr/Lookahead;

    move-result-object v2

    .line 951
    iget-object v5, v0, Lantlr/RuleBlock;->lock:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, p1

    .line 954
    iget-object v5, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    invoke-virtual {v2}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/Lookahead;

    aput-object v6, v5, p1

    .line 955
    iget-boolean v5, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v5, :cond_5

    .line 956
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "saving depth "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v0, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object p1, v0, p1

    iget-object v0, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v3, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v1, v0, v3}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public setGrammar(Lantlr/Grammar;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0}, Lantlr/LLkAnalyzer;->reset()V

    .line 1031
    :cond_0
    iput-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    .line 1034
    instance-of v0, p1, Lantlr/LexerGrammar;

    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    .line 1035
    iget-boolean p1, p1, Lantlr/Grammar;->analyzerDebug:Z

    iput-boolean p1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    return-void
.end method

.method public subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z
    .locals 5

    .line 1039
    instance-of v0, p1, Lantlr/ZeroOrMoreBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    instance-of v0, p1, Lantlr/OneOrMoreBlock;

    if-nez v0, :cond_6

    instance-of v0, p1, Lantlr/SynPredBlock;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1047
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    .line 1052
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    return v3

    .line 1053
    :cond_2
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 1055
    iget-object v4, v2, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v4, :cond_6

    iget-object v4, v2, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, v2, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1059
    :cond_3
    iget-object v2, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1060
    instance-of v4, v2, Lantlr/CharLiteralElement;

    if-nez v4, :cond_4

    instance-of v4, v2, Lantlr/TokenRefElement;

    if-nez v4, :cond_4

    instance-of v4, v2, Lantlr/CharRangeElement;

    if-nez v4, :cond_4

    instance-of v4, v2, Lantlr/TokenRangeElement;

    if-nez v4, :cond_4

    instance-of v4, v2, Lantlr/StringLiteralElement;

    if-eqz v4, :cond_6

    if-nez p2, :cond_6

    :cond_4
    iget-object v4, v2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    instance-of v4, v4, Lantlr/BlockEndElement;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v2

    if-eq v2, v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method
