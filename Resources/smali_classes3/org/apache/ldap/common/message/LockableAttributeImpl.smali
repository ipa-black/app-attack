.class public Lorg/apache/ldap/common/message/LockableAttributeImpl;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "LockableAttributeImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/LockableAttribute;


# instance fields
.field private final id:Ljava/lang/String;

.field private final list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 116
    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 79
    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 151
    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Z)V

    .line 99
    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 63
    iput-object p2, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 135
    iput-object p2, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .line 350
    const-string v0, "Attempt to add value to locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 232
    const-string v0, "Attempt to add value to locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 256
    const-string v0, "Attempt to clear values from locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 293
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->getParent()Lorg/apache/ldap/common/Lockable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;->getParent()Lorg/apache/ldap/common/Lockable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Lorg/apache/ldap/common/Lockable;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    .line 299
    :cond_0
    new-instance v1, Lorg/apache/ldap/common/message/LockableAttributeImpl;

    iget-object v2, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/message/LockableAttributeImpl;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 389
    :cond_0
    instance-of v1, p1, Ljavax/naming/directory/Attribute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 394
    :cond_1
    check-cast p1, Ljavax/naming/directory/Attribute;

    .line 395
    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 400
    :cond_2
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    .line 425
    :goto_0
    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 429
    :try_start_0
    iget-object v3, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljavax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljavax/naming/NamingException;->printStackTrace()V

    return v2

    :cond_5
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljavax/naming/NamingEnumeration;
    .locals 2

    .line 168
    new-instance v0, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/message/IteratorNamingEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public getAttributeDefinition()Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljavax/naming/OperationNotSupportedException;

    const-string v1, "Extending subclasses may override this if they like!"

    invoke-direct {v0, v1}, Ljavax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeSyntaxDefinition()Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljavax/naming/OperationNotSupportedException;

    const-string v1, "Extending subclasses may override this if they like!"

    invoke-direct {v0, v1}, Ljavax/naming/OperationNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isOrdered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .line 336
    const-string v0, "Attempt to remove value from locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 246
    const-string v0, "Attempt to remove value from locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 364
    const-string v0, "Attempt to set value in locked Attribute!"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/AbstractLockable;->lockCheck(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/ldap/common/message/LockableAttributeImpl;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
