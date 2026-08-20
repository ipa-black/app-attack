.class abstract Lcom/criteo/publisher/h0/b$d;
.super Ljava/lang/Object;
.source "DfpHeaderBidding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/h0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/criteo/publisher/h0/b$d;->a:Ljava/lang/String;

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/criteo/publisher/h0/b$a;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/criteo/publisher/h0/b$d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 1

    .line 276
    invoke-static {p0}, Lcom/criteo/publisher/h0/b$c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/criteo/publisher/h0/b$b;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static b(Ljava/lang/Object;)Lcom/criteo/publisher/h0/b$d;
    .locals 2

    .line 281
    invoke-static {p0}, Lcom/criteo/publisher/h0/b$c;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lcom/criteo/publisher/h0/b$c;

    check-cast p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/h0/b$c;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/criteo/publisher/h0/b$a;)V

    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lcom/criteo/publisher/h0/b$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    new-instance v0, Lcom/criteo/publisher/h0/b$b;

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/h0/b$b;-><init>(Ljava/lang/Object;Lcom/criteo/publisher/h0/b$a;)V

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/h0/b$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
