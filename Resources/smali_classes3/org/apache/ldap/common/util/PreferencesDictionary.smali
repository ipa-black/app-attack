.class public Lorg/apache/ldap/common/util/PreferencesDictionary;
.super Ljava/util/Dictionary;
.source "PreferencesDictionary.java"


# instance fields
.field private final prefs:Ljava/util/prefs/Preferences;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ldap/common/util/PreferencesDictionary;)Ljava/util/prefs/Preferences;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    return-object p0
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 3

    .line 100
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/util/PreferencesDictionary$1;

    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/ldap/common/util/PreferencesDictionary$1;-><init>(Lorg/apache/ldap/common/util/PreferencesDictionary;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v2, "can\'t get keys from prefs"

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 132
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreferences()Ljava/util/prefs/Preferences;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v2, "can\'t get keys from prefs"

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 3

    .line 121
    :try_start_0
    new-instance v0, Lorg/apache/ldap/common/util/ArrayEnumeration;

    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ArrayEnumeration;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v2, "can\'t get keys from prefs"

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/PreferencesDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 177
    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    :goto_1
    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {v1, p1, p2}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/PreferencesDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/prefs/Preferences;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/prefs/Preferences;->remove(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/PreferencesDictionary;->prefs:Ljava/util/prefs/Preferences;

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lorg/apache/ldap/common/util/NestableRuntimeException;

    const-string v2, "can\'t get keys from prefs"

    invoke-direct {v1, v2, v0}, Lorg/apache/ldap/common/util/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
