.class public Lorg/apache/ldap/server/prefs/ServerPreferencesFactory;
.super Ljava/lang/Object;
.source "ServerPreferencesFactory.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;

    invoke-direct {v0}, Lorg/apache/ldap/server/prefs/ServerSystemPreferences;-><init>()V

    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .locals 2

    .line 43
    new-instance v0, Lorg/apache/ldap/common/NotImplementedException;

    const-string v1, "userRoot() in org.apache.ldap.server.prefs.ServerPreferencesFactory not implemented!"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
