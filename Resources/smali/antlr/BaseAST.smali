.class public abstract Lantlr/BaseAST;
.super Ljava/lang/Object;
.source "BaseAST.java"

# interfaces
.implements Lantlr/collections/AST;
.implements Ljava/io/Serializable;


# static fields
.field private static tokenNames:[Ljava/lang/String; = null

.field private static verboseStringConversion:Z = false


# instance fields
.field protected down:Lantlr/BaseAST;

.field protected right:Lantlr/BaseAST;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 382
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object p0

    .line 346
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v1, 0x1

    .line 348
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x2

    .line 349
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, 0x3

    .line 350
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v1, 0x4

    .line 351
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v1, 0x5

    .line 352
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 354
    const-string v9, "&"

    const/16 v10, 0x70

    const/16 v11, 0x61

    const/16 v12, 0x3b

    if-ne v2, v11, :cond_1

    const/16 v13, 0x6d

    if-ne v3, v13, :cond_1

    if-ne v4, v10, :cond_1

    if-ne v6, v12, :cond_1

    .line 355
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v7

    goto :goto_3

    :cond_1
    const/16 v7, 0x6c

    const/16 v13, 0x74

    if-ne v2, v7, :cond_2

    if-ne v3, v13, :cond_2

    if-ne v4, v12, :cond_2

    .line 359
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    move v1, v5

    goto :goto_3

    :cond_2
    const/16 v7, 0x67

    if-ne v2, v7, :cond_3

    if-ne v3, v13, :cond_3

    if-ne v4, v12, :cond_3

    .line 363
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v5, 0x71

    const/16 v7, 0x6f

    if-ne v2, v5, :cond_4

    const/16 v5, 0x75

    if-ne v3, v5, :cond_4

    if-ne v4, v7, :cond_4

    if-ne v6, v13, :cond_4

    if-ne v8, v12, :cond_4

    .line 368
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x6

    goto :goto_3

    :cond_4
    if-ne v2, v11, :cond_5

    if-ne v3, v10, :cond_5

    if-ne v4, v7, :cond_5

    const/16 v2, 0x73

    if-ne v6, v2, :cond_5

    if-ne v8, v12, :cond_5

    .line 373
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 377
    :cond_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 380
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private doWorkForFindAll(Lantlr/collections/impl/Vector;Lantlr/collections/AST;Z)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 89
    invoke-interface {v0, p2}, Lantlr/collections/AST;->equalsTreePartial(Lantlr/collections/AST;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p3, :cond_3

    invoke-interface {v0, p2}, Lantlr/collections/AST;->equalsTree(Lantlr/collections/AST;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    :cond_2
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 94
    :cond_3
    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 95
    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lantlr/BaseAST;

    invoke-direct {v1, p1, p2, p3}, Lantlr/BaseAST;->doWorkForFindAll(Lantlr/collections/impl/Vector;Lantlr/collections/AST;Z)V

    .line 88
    :cond_4
    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 388
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 423
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object p0

    .line 389
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 413
    :cond_1
    const-string v2, "&apos;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 393
    :cond_2
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 403
    :cond_3
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 398
    :cond_4
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 408
    :cond_5
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setVerboseStringConversion(Z[Ljava/lang/String;)V
    .locals 0

    .line 294
    sput-boolean p0, Lantlr/BaseAST;->verboseStringConversion:Z

    .line 295
    sput-object p1, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addChild(Lantlr/collections/AST;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    if-eqz v0, :cond_2

    .line 56
    :goto_0
    iget-object v1, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    if-nez v1, :cond_1

    .line 59
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    :goto_1
    return-void
.end method

.method public equals(Lantlr/collections/AST;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v1

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equalsList(Lantlr/collections/AST;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-interface {v1, p1}, Lantlr/collections/AST;->equals(Lantlr/collections/AST;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 128
    :cond_2
    invoke-interface {v1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 129
    invoke-interface {v1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v3

    invoke-interface {v2, v3}, Lantlr/collections/AST;->equalsList(Lantlr/collections/AST;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 134
    :cond_3
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    if-eqz v2, :cond_4

    return v0

    .line 121
    :cond_4
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method public equalsListPartial(Lantlr/collections/AST;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    invoke-interface {v1, p1}, Lantlr/collections/AST;->equals(Lantlr/collections/AST;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 163
    :cond_2
    invoke-interface {v1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 164
    invoke-interface {v1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v3

    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v4

    invoke-interface {v3, v4}, Lantlr/collections/AST;->equalsListPartial(Lantlr/collections/AST;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 159
    :cond_3
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public equalsTree(Lantlr/collections/AST;)Z
    .locals 2

    .line 180
    invoke-virtual {p0, p1}, Lantlr/BaseAST;->equals(Lantlr/collections/AST;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    invoke-interface {v0, p1}, Lantlr/collections/AST;->equalsList(Lantlr/collections/AST;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 186
    :cond_1
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equalsTreePartial(Lantlr/collections/AST;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/BaseAST;->equals(Lantlr/collections/AST;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {p0}, Lantlr/BaseAST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    invoke-interface {v1, p1}, Lantlr/collections/AST;->equalsListPartial(Lantlr/collections/AST;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public findAll(Lantlr/collections/AST;)Lantlr/collections/ASTEnumeration;
    .locals 2

    .line 215
    new-instance v0, Lantlr/collections/impl/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lantlr/collections/impl/Vector;-><init>(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, v0, p1, v1}, Lantlr/BaseAST;->doWorkForFindAll(Lantlr/collections/impl/Vector;Lantlr/collections/AST;Z)V

    .line 225
    new-instance p1, Lantlr/collections/impl/ASTEnumerator;

    invoke-direct {p1, v0}, Lantlr/collections/impl/ASTEnumerator;-><init>(Lantlr/collections/impl/Vector;)V

    return-object p1
.end method

.method public findAllPartial(Lantlr/collections/AST;)Lantlr/collections/ASTEnumeration;
    .locals 2

    .line 233
    new-instance v0, Lantlr/collections/impl/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lantlr/collections/impl/Vector;-><init>(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 241
    invoke-direct {p0, v0, p1, v1}, Lantlr/BaseAST;->doWorkForFindAll(Lantlr/collections/impl/Vector;Lantlr/collections/AST;Z)V

    .line 243
    new-instance p1, Lantlr/collections/impl/ASTEnumerator;

    invoke-direct {p1, v0}, Lantlr/collections/impl/ASTEnumerator;-><init>(Lantlr/collections/impl/Vector;)V

    return-object p1
.end method

.method public getFirstChild()Lantlr/collections/AST;
    .locals 1

    .line 248
    iget-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    return-object v0
.end method

.method public getNextSibling()Lantlr/collections/AST;
    .locals 1

    .line 253
    iget-object v0, p0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    return-object v0
.end method

.method public getNumberOfChildren()I
    .locals 2

    .line 68
    iget-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 72
    :goto_0
    iget-object v0, v0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 258
    const-string v0, ""

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initialize(ILjava/lang/String;)V
.end method

.method public abstract initialize(Lantlr/Token;)V
.end method

.method public abstract initialize(Lantlr/collections/AST;)V
.end method

.method public removeChildren()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    return-void
.end method

.method public setFirstChild(Lantlr/collections/AST;)V
    .locals 0

    .line 278
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->down:Lantlr/BaseAST;

    return-void
.end method

.method public setNextSibling(Lantlr/collections/AST;)V
    .locals 0

    .line 282
    check-cast p1, Lantlr/BaseAST;

    iput-object p1, p0, Lantlr/BaseAST;->right:Lantlr/BaseAST;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 301
    sget-boolean v1, Lantlr/BaseAST;->verboseStringConversion:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v1, ",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    sget-object v1, Lantlr/BaseAST;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v1, ">]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringList()Ljava/lang/String;
    .locals 2

    .line 318
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, " ("

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 319
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/BaseAST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 321
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lantlr/BaseAST;

    invoke-virtual {v1}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_1
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_2
    invoke-interface {p0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 325
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lantlr/BaseAST;

    invoke-virtual {v1}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 2

    .line 333
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, " ("

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 334
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/BaseAST;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 336
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    check-cast v1, Lantlr/BaseAST;

    invoke-virtual {v1}, Lantlr/BaseAST;->toStringList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_1
    invoke-interface {p0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public xmlSerialize(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    if-nez v1, :cond_1

    .line 458
    move-object v1, v0

    check-cast v1, Lantlr/BaseAST;

    invoke-virtual {v1, p1}, Lantlr/BaseAST;->xmlSerializeNode(Ljava/io/Writer;)V

    goto :goto_1

    .line 461
    :cond_1
    move-object v1, v0

    check-cast v1, Lantlr/BaseAST;

    invoke-virtual {v1, p1}, Lantlr/BaseAST;->xmlSerializeRootOpen(Ljava/io/Writer;)V

    .line 464
    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    check-cast v2, Lantlr/BaseAST;

    invoke-virtual {v2, p1}, Lantlr/BaseAST;->xmlSerialize(Ljava/io/Writer;)V

    .line 467
    invoke-virtual {v1, p1}, Lantlr/BaseAST;->xmlSerializeRootClose(Ljava/io/Writer;)V

    .line 455
    :goto_1
    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    goto :goto_0
.end method

.method public xmlSerializeNode(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 429
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "text=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lantlr/BaseAST;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public xmlSerializeRootClose(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public xmlSerializeRootOpen(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 439
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "text=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/BaseAST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lantlr/BaseAST;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/BaseAST;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
