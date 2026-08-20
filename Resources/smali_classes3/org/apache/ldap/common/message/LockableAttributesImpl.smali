.class public Lorg/apache/ldap/common/message/LockableAttributesImpl;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "LockableAttributesImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/LockableAttributes;


# instance fields
.field private keyMap:Ljava/util/Map;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/Lockable;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/apache/ldap/common/Lockable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 92
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/naming/directory/Attribute;

    .line 99
    iget-object p3, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getUserProvidedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 429
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    const/4 p1, 0x0

    return-object p1

    .line 433
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private setUserProvidedId(Ljava/lang/String;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    .line 400
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 404
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 289
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributesImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->getParent()Lorg/apache/ldap/common/Lockable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ldap/common/message/LockableAttributesImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 345
    :cond_0
    instance-of v1, p1, Ljavax/naming/directory/Attributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 350
    :cond_1
    check-cast p1, Ljavax/naming/directory/Attributes;

    .line 352
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 357
    :cond_2
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->isCaseIgnored()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->isCaseIgnored()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 362
    :cond_3
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 363
    :cond_4
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/Attribute;

    .line 366
    invoke-interface {v1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3

    if-nez v3, :cond_5

    return v2

    .line 373
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->getUserProvidedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attribute;

    return-object p1
.end method

.method public getAll()Ljavax/naming/NamingEnumeration;
    .locals 2

    .line 169
    new-instance v0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public getIDs()Ljavax/naming/NamingEnumeration;
    .locals 2

    .line 186
    new-instance v0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public isCaseIgnored()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;
    .locals 1

    .line 205
    const-string v0, "Attempt to add value to locked Attributes"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->setUserProvidedId(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-interface {v0, p2}, Ljavax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object p2, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;
    .locals 3

    .line 232
    const-string v0, "Attempt to Attribute to locked Attributes"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 233
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->setUserProvidedId(Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljavax/naming/directory/Attribute;
    .locals 2

    .line 263
    const-string v0, "Attempt to remove Attribute from locked Attributes"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/message/LockableAttributesImpl;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->keyMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 300
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributesImpl;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/naming/directory/Attribute;

    .line 309
    :try_start_0
    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v3

    .line 310
    :goto_1
    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-interface {v3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    .line 313
    invoke-interface {v2}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v4, 0xa

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 321
    invoke-static {v2}, Lorg/apache/ldap/common/util/ExceptionUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
