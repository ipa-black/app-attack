.class Lcom/criteo/publisher/n0/b$c;
.super Ljava/lang/Object;
.source "AdvertisingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/n0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final c:Lcom/criteo/publisher/n0/b$c;

.field private static final d:Lcom/criteo/publisher/n0/b$c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 150
    new-instance v0, Lcom/criteo/publisher/n0/b$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/n0/b$c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/criteo/publisher/n0/b$c;->c:Lcom/criteo/publisher/n0/b$c;

    .line 151
    new-instance v0, Lcom/criteo/publisher/n0/b$c;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/n0/b$c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/criteo/publisher/n0/b$c;->d:Lcom/criteo/publisher/n0/b$c;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/criteo/publisher/n0/b$c;->a:Ljava/lang/String;

    .line 167
    iput-boolean p2, p0, Lcom/criteo/publisher/n0/b$c;->b:Z

    return-void
.end method

.method static a()Lcom/criteo/publisher/n0/b$c;
    .locals 1

    .line 179
    sget-object v0, Lcom/criteo/publisher/n0/b$c;->c:Lcom/criteo/publisher/n0/b$c;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/criteo/publisher/n0/b$c;
    .locals 2

    .line 171
    new-instance v0, Lcom/criteo/publisher/n0/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/n0/b$c;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static d()Lcom/criteo/publisher/n0/b$c;
    .locals 1

    .line 175
    sget-object v0, Lcom/criteo/publisher/n0/b$c;->d:Lcom/criteo/publisher/n0/b$c;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/criteo/publisher/n0/b$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/criteo/publisher/n0/b$c;->b:Z

    return v0
.end method
