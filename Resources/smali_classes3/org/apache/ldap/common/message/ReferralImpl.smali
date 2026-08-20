.class public Lorg/apache/ldap/common/message/ReferralImpl;
.super Lorg/apache/ldap/common/AbstractLockable;
.source "ReferralImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Referral;


# instance fields
.field private final urls:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/Lockable;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/AbstractLockable;-><init>(Lorg/apache/ldap/common/Lockable;Z)V

    .line 40
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addLdapUrl(Ljava/lang/String;)V
    .locals 1

    .line 83
    const-string v0, "Atempt to add alternative url to locked Referral!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ReferralImpl;->lockCheck(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lorg/apache/ldap/common/message/Referral;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 119
    check-cast p1, Lorg/apache/ldap/common/message/Referral;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/Referral;->getLdapUrls()Ljava/util/Collection;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getLdapUrls()Ljava/util/Collection;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeLdapUrl(Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string v0, "Atempt to remove alternative url from locked Referral!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ReferralImpl;->lockCheck(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/apache/ldap/common/message/ReferralImpl;->urls:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
