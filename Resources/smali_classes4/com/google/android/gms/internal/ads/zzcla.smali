.class public final synthetic Lcom/google/android/gms/internal/ads/zzcla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzazs;

.field public final synthetic zzb:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzazs;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Lcom/google/android/gms/internal/ads/zzazs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzazt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Lcom/google/android/gms/internal/ads/zzazs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzb:[B

    sget v2, Lcom/google/android/gms/internal/ads/zzclf;->zzc:I

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazs;->zza()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzazr;

    .line 2
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzazr;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzclg;

    .line 3
    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzclg;-><init>(Lcom/google/android/gms/internal/ads/zzazt;ILcom/google/android/gms/internal/ads/zzazt;)V

    return-object v3
.end method
