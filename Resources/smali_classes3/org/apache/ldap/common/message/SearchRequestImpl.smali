.class public Lorg/apache/ldap/common/message/SearchRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "SearchRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SearchRequest;


# instance fields
.field private attributes:Ljava/util/Collection;

.field private baseDn:Ljava/lang/String;

.field private derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field private filter:Lorg/apache/ldap/common/filter/ExprNode;

.field private scope:Lorg/apache/ldap/common/message/ScopeEnum;

.field private sizeLimit:I

.field private timeLimit:I

.field private typesOnly:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 70
    sget-object v0, Lorg/apache/ldap/common/message/SearchRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;)V
    .locals 1

    .line 309
    const-string v0, "Attempt to add return attribute to locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 347
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 352
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/SearchRequest;

    .line 354
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getBase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->baseDn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 359
    :cond_2
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    if-eq v0, v2, :cond_3

    return v1

    .line 364
    :cond_3
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getScope()Lorg/apache/ldap/common/message/ScopeEnum;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->scope:Lorg/apache/ldap/common/message/ScopeEnum;

    if-eq v0, v2, :cond_4

    return v1

    .line 369
    :cond_4
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getSizeLimit()I

    move-result v0

    iget v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->sizeLimit:I

    if-eq v0, v2, :cond_5

    return v1

    .line 374
    :cond_5
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getTimeLimit()I

    move-result v0

    iget v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->timeLimit:I

    if-eq v0, v2, :cond_6

    return v1

    .line 379
    :cond_6
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getTypesOnly()Z

    move-result v0

    iget-boolean v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->typesOnly:Z

    if-eq v0, v2, :cond_7

    return v1

    .line 384
    :cond_7
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 386
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_8

    return v1

    .line 392
    :cond_8
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    if-nez v0, :cond_9

    .line 394
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_9

    return v1

    .line 400
    :cond_9
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    if-eqz v0, :cond_c

    .line 402
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v0, v2, :cond_a

    return v1

    .line 407
    :cond_a
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 408
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 410
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getAttributes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 417
    :cond_c
    new-instance v0, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;

    invoke-direct {v0}, Lorg/apache/ldap/common/filter/BranchNormalizedVisitor;-><init>()V

    .line 418
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getFilter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/ldap/common/filter/ExprNode;->accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V

    .line 419
    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v2, v0}, Lorg/apache/ldap/common/filter/ExprNode;->accept(Lorg/apache/ldap/common/filter/FilterVisitor;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    iget-object v2, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    invoke-interface {v2, v0}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 426
    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchRequest;->getFilter()Lorg/apache/ldap/common/filter/ExprNode;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/ldap/common/filter/ExprNode;->printToBuffer(Ljava/lang/StringBuffer;)V

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getBase()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->baseDn:Ljava/lang/String;

    return-object v0
.end method

.method public getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object v0
.end method

.method public getFilter()Lorg/apache/ldap/common/filter/ExprNode;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    return-object v0
.end method

.method public getResponseTypes()[Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 189
    sget-object v0, Lorg/apache/ldap/common/message/SearchRequestImpl;->RESPONSE_TYPES:[Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ldap/common/message/MessageTypeEnum;

    check-cast v0, [Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public getScope()Lorg/apache/ldap/common/message/ScopeEnum;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->scope:Lorg/apache/ldap/common/message/ScopeEnum;

    return-object v0
.end method

.method public getSizeLimit()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->sizeLimit:I

    return v0
.end method

.method public getTimeLimit()I
    .locals 1

    .line 254
    iget v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->timeLimit:I

    return v0
.end method

.method public getTypesOnly()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->typesOnly:Z

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 322
    const-string v0, "Attempt to remove return attribute from locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->attributes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 1

    .line 128
    const-string v0, "Attempt to alter search base of locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->baseDn:Ljava/lang/String;

    return-void
.end method

.method public setDerefAliases(Lorg/apache/ldap/common/message/DerefAliasesEnum;)V
    .locals 1

    .line 151
    const-string v0, "Attempt to alter alias dereferencing mode of locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->derefAliases:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-void
.end method

.method public setFilter(Lorg/apache/ldap/common/filter/ExprNode;)V
    .locals 1

    .line 176
    const-string v0, "Attempt to alter search filter of locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->filter:Lorg/apache/ldap/common/filter/ExprNode;

    return-void
.end method

.method public setScope(Lorg/apache/ldap/common/message/ScopeEnum;)V
    .locals 1

    .line 211
    const-string v0, "Attempt to alter search scope of locked SearchReqest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->scope:Lorg/apache/ldap/common/message/ScopeEnum;

    return-void
.end method

.method public setSizeLimit(I)V
    .locals 1

    .line 240
    const-string v0, "Attempt to alter size limit on locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 241
    iput p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->sizeLimit:I

    return-void
.end method

.method public setTimeLimit(I)V
    .locals 1

    .line 267
    const-string v0, "Attempt to alter time limit on locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 268
    iput p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->timeLimit:I

    return-void
.end method

.method public setTypesOnly(Z)V
    .locals 1

    .line 296
    const-string v0, "Attempt to alter typesOnly flag of locked SearchRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 298
    iput-boolean p1, p0, Lorg/apache/ldap/common/message/SearchRequestImpl;->typesOnly:Z

    return-void
.end method
