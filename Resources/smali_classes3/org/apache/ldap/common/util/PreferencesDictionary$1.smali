.class Lorg/apache/ldap/common/util/PreferencesDictionary$1;
.super Lorg/apache/ldap/common/util/ArrayEnumeration;
.source "PreferencesDictionary.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/util/PreferencesDictionary;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/util/PreferencesDictionary;[Ljava/lang/Object;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary$1;->this$0:Lorg/apache/ldap/common/util/PreferencesDictionary;

    invoke-direct {p0, p2}, Lorg/apache/ldap/common/util/ArrayEnumeration;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public nextElement()Ljava/lang/Object;
    .locals 3

    .line 104
    invoke-super {p0}, Lorg/apache/ldap/common/util/ArrayEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lorg/apache/ldap/common/util/PreferencesDictionary$1;->this$0:Lorg/apache/ldap/common/util/PreferencesDictionary;

    invoke-static {v1}, Lorg/apache/ldap/common/util/PreferencesDictionary;->access$000(Lorg/apache/ldap/common/util/PreferencesDictionary;)Ljava/util/prefs/Preferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
