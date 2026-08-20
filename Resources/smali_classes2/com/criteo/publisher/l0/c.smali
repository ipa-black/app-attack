.class public Lcom/criteo/publisher/l0/c;
.super Ljava/lang/Object;
.source "UserPrivacyUtil.java"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/n0/q;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/criteo/publisher/l0/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    const-string v0, "^1([YN\\-yn]){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/l0/c;->e:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1ynn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1yny"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "1---"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, ""

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v6, "1yn-"

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const-string v6, "1-n-"

    aput-object v6, v0, v1

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/l0/c;->f:Ljava/util/List;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "explicit_no"

    aput-object v1, v0, v2

    const-string v1, "potential_whitelist"

    aput-object v1, v0, v3

    const-string v1, "dnt"

    aput-object v1, v0, v4

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/l0/c;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/l0/d/d;

    invoke-direct {v1, p1}, Lcom/criteo/publisher/l0/d/d;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/l0/c;-><init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/l0/d/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/l0/d/d;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/l0/c;->a:Lcom/criteo/publisher/logging/g;

    .line 80
    iput-object p1, p0, Lcom/criteo/publisher/l0/c;->c:Landroid/content/SharedPreferences;

    .line 81
    new-instance v0, Lcom/criteo/publisher/n0/q;

    invoke-direct {v0, p1}, Lcom/criteo/publisher/n0/q;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/criteo/publisher/l0/c;->b:Lcom/criteo/publisher/n0/q;

    .line 82
    iput-object p2, p0, Lcom/criteo/publisher/l0/c;->d:Lcom/criteo/publisher/l0/d/d;

    return-void
.end method

.method private f()Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private h()Z
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/criteo/publisher/l0/c;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/criteo/publisher/l0/c;->f:Ljava/util/List;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->d:Lcom/criteo/publisher/l0/d/d;

    invoke-virtual {v0}, Lcom/criteo/publisher/l0/d/d;->a()Lcom/criteo/publisher/l0/d/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/criteo/publisher/l0/d/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    const-string v1, "MoPubConsent_String"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/l0/b;->a(Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USPrivacy_Optout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/l0/b;->a(Z)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public b()Lcom/criteo/publisher/l0/d/c;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->d:Lcom/criteo/publisher/l0/d/d;

    invoke-virtual {v0}, Lcom/criteo/publisher/l0/d/d;->a()Lcom/criteo/publisher/l0/d/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->b:Lcom/criteo/publisher/n0/q;

    const-string v1, "IABUSPrivacy_String"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->b:Lcom/criteo/publisher/n0/q;

    const-string v1, "MoPubConsent_String"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/criteo/publisher/l0/c;->b:Lcom/criteo/publisher/n0/q;

    const-string v1, "USPrivacy_Optout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/criteo/publisher/l0/c;->f()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/l0/c;->h()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/criteo/publisher/l0/c;->g:Ljava/util/List;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
