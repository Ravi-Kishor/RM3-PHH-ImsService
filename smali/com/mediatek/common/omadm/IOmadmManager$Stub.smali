.class public abstract Lcom/mediatek/common/omadm/IOmadmManager$Stub;
.super Landroid/os/Binder;
.source "IOmadmManager.java"

# interfaces
.implements Lcom/mediatek/common/omadm/IOmadmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/omadm/IOmadmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.omadm.IOmadmManager"

.field static final TRANSACTION_inputStream:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/omadm/IOmadmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/omadm/IOmadmManager;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/omadm/IOmadmManager;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/omadm/IOmadmManager;
    .locals 1

    .line 132
    sget-object v0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/omadm/IOmadmManager;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/common/omadm/IOmadmManager;

    .line 125
    sget-object v0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 126
    sput-object p0, Lcom/mediatek/common/omadm/IOmadmManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/omadm/IOmadmManager;

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.mediatek.common.omadm.IOmadmManager"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 60
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/omadm/IOmadmManager$Stub;->inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 64
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v3, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 70
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    :goto_0
    return v1
.end method
