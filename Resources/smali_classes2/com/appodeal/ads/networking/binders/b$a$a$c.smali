.class public final Lcom/appodeal/ads/networking/binders/b$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/networking/binders/b$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networking/binders/b$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/networking/binders/b$a$a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/networking/binders/b$a$a$c;

    invoke-direct {v0}, Lcom/appodeal/ads/networking/binders/b$a$a$c;-><init>()V

    sput-object v0, Lcom/appodeal/ads/networking/binders/b$a$a$c;->a:Lcom/appodeal/ads/networking/binders/b$a$a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    const-string v0, "bannerview"

    return-object v0
.end method
