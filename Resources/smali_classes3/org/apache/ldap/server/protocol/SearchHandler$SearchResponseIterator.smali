.class Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;
.super Ljava/lang/Object;
.source "SearchHandler.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/protocol/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchResponseIterator"
.end annotation


# instance fields
.field private done:Z

.field private prefetched:Ljava/lang/Object;

.field private final req:Lorg/apache/ldap/common/message/SearchRequest;

.field private respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

.field private final synthetic this$0:Lorg/apache/ldap/server/protocol/SearchHandler;

.field private final underlying:Ljavax/naming/NamingEnumeration;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/protocol/SearchHandler;Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingEnumeration;)V
    .locals 5

    .line 265
    iput-object p1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->this$0:Lorg/apache/ldap/server/protocol/SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->done:Z

    .line 266
    iput-object p2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    .line 267
    iput-object p3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    .line 271
    :try_start_0
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/SearchResult;

    .line 279
    invoke-virtual {v1}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v2

    const-string v3, "ref"

    invoke-interface {v2, v3}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->size()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_2

    .line 297
    :cond_0
    new-instance v1, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;-><init>(I)V

    .line 299
    new-instance v3, Lorg/apache/ldap/common/message/ReferralImpl;

    invoke-direct {v3, v1}, Lorg/apache/ldap/common/message/ReferralImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v1, v3}, Lorg/apache/ldap/common/message/SearchResponseReference;->setReferral(Lorg/apache/ldap/common/message/Referral;)V

    .line 301
    :goto_0
    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->size()I

    move-result v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v3, :cond_1

    .line 307
    :try_start_1
    invoke-interface {v2, v0}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    invoke-interface {v1}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/ldap/common/message/Referral;->addLdapUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 315
    :try_start_2
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 v4, 0x0

    .line 321
    :try_start_3
    iput-object v4, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    .line 323
    invoke-virtual {p1, p2, v3}, Lorg/apache/ldap/server/protocol/SearchHandler;->getResponse(Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingException;)Lorg/apache/ldap/common/message/SearchResponseDone;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    goto :goto_3

    .line 285
    :cond_2
    :goto_2
    new-instance p3, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;

    invoke-interface {p2}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v0

    invoke-direct {p3, v0}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;-><init>(I)V

    .line 287
    invoke-virtual {v1}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/ldap/common/message/SearchResponseEntry;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 289
    invoke-virtual {v1}, Ljavax/naming/directory/SearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/ldap/common/message/SearchResponseEntry;->setObjectName(Ljava/lang/String;)V

    .line 291
    iput-object p3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p3

    .line 335
    :try_start_4
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    :catch_2
    invoke-virtual {p1, p2, p3}, Lorg/apache/ldap/server/protocol/SearchHandler;->getResponse(Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingException;)Lorg/apache/ldap/common/message/SearchResponseDone;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 7

    .line 352
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    .line 357
    iget-boolean v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->done:Z

    if-nez v1, :cond_5

    .line 363
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->done:Z

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 380
    :try_start_0
    iget-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    iget-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/SearchResult;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    invoke-virtual {v2}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v3

    const-string v4, "ref"

    invoke-interface {v3, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 430
    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->size()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    new-instance v2, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;

    iget-object v4, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-interface {v4}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v4

    invoke-direct {v2, v4}, Lorg/apache/ldap/common/message/SearchResponseReferenceImpl;-><init>(I)V

    .line 444
    new-instance v4, Lorg/apache/ldap/common/message/ReferralImpl;

    invoke-direct {v4, v2}, Lorg/apache/ldap/common/message/ReferralImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v2, v4}, Lorg/apache/ldap/common/message/SearchResponseReference;->setReferral(Lorg/apache/ldap/common/message/Referral;)V

    const/4 v4, 0x0

    .line 446
    :goto_0
    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 452
    :try_start_1
    invoke-interface {v3, v4}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 454
    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseReference;->getReferral()Lorg/apache/ldap/common/message/Referral;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/ldap/common/message/Referral;->addLdapUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 460
    :try_start_2
    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    :catchall_0
    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->this$0:Lorg/apache/ldap/server/protocol/SearchHandler;

    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-virtual {v1, v3, v2}, Lorg/apache/ldap/server/protocol/SearchHandler;->getResponse(Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingException;)Lorg/apache/ldap/common/message/SearchResponseDone;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    return-object v0

    .line 474
    :cond_2
    iput-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    goto :goto_2

    .line 432
    :cond_3
    :goto_1
    new-instance v1, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;

    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-interface {v3}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;-><init>(I)V

    .line 434
    invoke-virtual {v2}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ldap/common/message/SearchResponseEntry;->setAttributes(Ljavax/naming/directory/Attributes;)V

    .line 436
    invoke-virtual {v2}, Ljavax/naming/directory/SearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ldap/common/message/SearchResponseEntry;->setObjectName(Ljava/lang/String;)V

    .line 438
    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    :goto_2
    return-object v0

    .line 388
    :cond_4
    :try_start_3
    iget-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v2}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :catchall_1
    :try_start_4
    new-instance v2, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;

    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-interface {v3}, Lorg/apache/ldap/common/message/SearchRequest;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/ldap/common/message/SearchResponseDoneImpl;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    .line 396
    new-instance v3, Lorg/apache/ldap/common/message/LdapResultImpl;

    iget-object v4, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    invoke-direct {v3, v4}, Lorg/apache/ldap/common/message/LdapResultImpl;-><init>(Lorg/apache/ldap/common/Lockable;)V

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/SearchResponseDone;->setLdapResult(Lorg/apache/ldap/common/message/LdapResult;)V

    .line 398
    iget-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v2

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->SUCCESS:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/LdapResult;->setResultCode(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 400
    iget-object v2, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    invoke-interface {v2}, Lorg/apache/ldap/common/message/SearchResponseDone;->getLdapResult()Lorg/apache/ldap/common/message/LdapResult;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-interface {v3}, Lorg/apache/ldap/common/message/SearchRequest;->getBase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ldap/common/message/LdapResult;->setMatchedDn(Ljava/lang/String;)V

    .line 402
    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;
    :try_end_4
    .catch Ljavax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :catch_1
    move-exception v2

    .line 411
    :try_start_5
    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->underlying:Ljavax/naming/NamingEnumeration;

    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 417
    :catchall_2
    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->prefetched:Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->this$0:Lorg/apache/ldap/server/protocol/SearchHandler;

    iget-object v3, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->req:Lorg/apache/ldap/common/message/SearchRequest;

    invoke-virtual {v1, v3, v2}, Lorg/apache/ldap/server/protocol/SearchHandler;->getResponse(Lorg/apache/ldap/common/message/SearchRequest;Ljavax/naming/NamingException;)Lorg/apache/ldap/common/message/SearchResponseDone;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ldap/server/protocol/SearchHandler$SearchResponseIterator;->respDone:Lorg/apache/ldap/common/message/SearchResponseDone;

    return-object v0

    .line 359
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
