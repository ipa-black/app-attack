.class public final Lcom/google/android/gms/internal/ads/zzbut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/ads/internal/util/zzbb;

.field static final zzb:Lcom/google/android/gms/ads/internal/util/zzbb;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbur;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbut;->zza:Lcom/google/android/gms/ads/internal/util/zzbb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbus;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbut;->zzb:Lcom/google/android/gms/ads/internal/util/zzbb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoy;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/ads/zzfoy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbuf;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbut;->zza:Lcom/google/android/gms/ads/internal/util/zzbb;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbut;->zzb:Lcom/google/android/gms/ads/internal/util/zzbb;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbuf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchu;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbb;Lcom/google/android/gms/ads/internal/util/zzbb;Lcom/google/android/gms/internal/ads/zzfoy;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzbut;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)Lcom/google/android/gms/internal/ads/zzbuj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbux;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbut;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbux;-><init>(Lcom/google/android/gms/internal/ads/zzbuf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbum;Lcom/google/android/gms/internal/ads/zzbul;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbvc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbut;->zzc:Lcom/google/android/gms/internal/ads/zzbuf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvc;-><init>(Lcom/google/android/gms/internal/ads/zzbuf;)V

    return-object v0
.end method
