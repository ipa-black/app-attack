package com.appodeal.ads.api;

import com.appodeal.ads.api.UserSettings;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class User extends GeneratedMessageV3 implements UserOrBuilder {
    public static final int CONSENT_FIELD_NUMBER = 1;
    public static final int IAB_CONSENT_DATA_FIELD_NUMBER = 4;
    public static final int ID_FIELD_NUMBER = 3;
    public static final int USERSETTINGS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private boolean consent_;
    private volatile Object iabConsentData_;
    private volatile Object id_;
    private byte memoizedIsInitialized;
    private UserSettings userSettings_;
    private static final User DEFAULT_INSTANCE = new User();
    private static final Parser<User> PARSER = new AbstractParser<User>() { // from class: com.appodeal.ads.api.User.1
        @Override // com.explorestack.protobuf.Parser
        public User parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new User(codedInputStream, extensionRegistryLite);
        }
    };

    private User(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private User() {
        this.memoizedIsInitialized = (byte) -1;
        this.id_ = "";
        this.iabConsentData_ = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new User();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private User(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                this.consent_ = codedInputStream.readBool();
                            } else if (readTag == 18) {
                                UserSettings userSettings = this.userSettings_;
                                UserSettings.Builder builder = userSettings != null ? userSettings.toBuilder() : null;
                                UserSettings userSettings2 = (UserSettings) codedInputStream.readMessage(UserSettings.parser(), extensionRegistryLite);
                                this.userSettings_ = userSettings2;
                                if (builder != null) {
                                    builder.mergeFrom(userSettings2);
                                    this.userSettings_ = builder.buildPartial();
                                }
                            } else if (readTag == 26) {
                                this.id_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 34) {
                                this.iabConsentData_ = codedInputStream.readStringRequireUtf8();
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_User_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_User_fieldAccessorTable.ensureFieldAccessorsInitialized(User.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public boolean getConsent() {
        return this.consent_;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public boolean hasUserSettings() {
        return this.userSettings_ != null;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public UserSettings getUserSettings() {
        UserSettings userSettings = this.userSettings_;
        return userSettings == null ? UserSettings.getDefaultInstance() : userSettings;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public UserSettingsOrBuilder getUserSettingsOrBuilder() {
        return getUserSettings();
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public String getIabConsentData() {
        Object obj = this.iabConsentData_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.iabConsentData_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.UserOrBuilder
    public ByteString getIabConsentDataBytes() {
        Object obj = this.iabConsentData_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.iabConsentData_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z = this.consent_;
        if (z) {
            codedOutputStream.writeBool(1, z);
        }
        if (this.userSettings_ != null) {
            codedOutputStream.writeMessage(2, getUserSettings());
        }
        if (!getIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.id_);
        }
        if (!getIabConsentDataBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.iabConsentData_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        boolean z = this.consent_;
        int computeBoolSize = z ? CodedOutputStream.computeBoolSize(1, z) : 0;
        if (this.userSettings_ != null) {
            computeBoolSize += CodedOutputStream.computeMessageSize(2, getUserSettings());
        }
        if (!getIdBytes().isEmpty()) {
            computeBoolSize += GeneratedMessageV3.computeStringSize(3, this.id_);
        }
        if (!getIabConsentDataBytes().isEmpty()) {
            computeBoolSize += GeneratedMessageV3.computeStringSize(4, this.iabConsentData_);
        }
        int serializedSize = computeBoolSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof User)) {
            return super.equals(obj);
        }
        User user = (User) obj;
        if (getConsent() == user.getConsent() && hasUserSettings() == user.hasUserSettings()) {
            return (!hasUserSettings() || getUserSettings().equals(user.getUserSettings())) && getId().equals(user.getId()) && getIabConsentData().equals(user.getIabConsentData()) && this.unknownFields.equals(user.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getConsent());
        if (hasUserSettings()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getUserSettings().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 3) * 53) + getId().hashCode()) * 37) + 4) * 53) + getIabConsentData().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static User parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static User parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static User parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static User parseFrom(InputStream inputStream) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static User parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static User parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static User parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static User parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(User user) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(user);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements UserOrBuilder {
        private boolean consent_;
        private Object iabConsentData_;
        private Object id_;
        private SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> userSettingsBuilder_;
        private UserSettings userSettings_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_User_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_User_fieldAccessorTable.ensureFieldAccessorsInitialized(User.class, Builder.class);
        }

        private Builder() {
            this.id_ = "";
            this.iabConsentData_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.id_ = "";
            this.iabConsentData_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = User.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.consent_ = false;
            if (this.userSettingsBuilder_ == null) {
                this.userSettings_ = null;
            } else {
                this.userSettings_ = null;
                this.userSettingsBuilder_ = null;
            }
            this.id_ = "";
            this.iabConsentData_ = "";
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_User_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public User getDefaultInstanceForType() {
            return User.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public User build() {
            User buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public User buildPartial() {
            User user = new User(this);
            user.consent_ = this.consent_;
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 == null) {
                user.userSettings_ = this.userSettings_;
            } else {
                user.userSettings_ = singleFieldBuilderV3.build();
            }
            user.id_ = this.id_;
            user.iabConsentData_ = this.iabConsentData_;
            onBuilt();
            return user;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder mo142clone() {
            return (Builder) super.mo142clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof User) {
                return mergeFrom((User) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(User user) {
            if (user == User.getDefaultInstance()) {
                return this;
            }
            if (user.getConsent()) {
                setConsent(user.getConsent());
            }
            if (user.hasUserSettings()) {
                mergeUserSettings(user.getUserSettings());
            }
            if (!user.getId().isEmpty()) {
                this.id_ = user.id_;
                onChanged();
            }
            if (!user.getIabConsentData().isEmpty()) {
                this.iabConsentData_ = user.iabConsentData_;
                onChanged();
            }
            mergeUnknownFields(user.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.User.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.User.access$900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.User r3 = (com.appodeal.ads.api.User) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.appodeal.ads.api.User r4 = (com.appodeal.ads.api.User) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.User.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.User$Builder");
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public boolean getConsent() {
            return this.consent_;
        }

        public Builder setConsent(boolean z) {
            this.consent_ = z;
            onChanged();
            return this;
        }

        public Builder clearConsent() {
            this.consent_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public boolean hasUserSettings() {
            return (this.userSettingsBuilder_ == null && this.userSettings_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public UserSettings getUserSettings() {
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserSettings userSettings = this.userSettings_;
                return userSettings == null ? UserSettings.getDefaultInstance() : userSettings;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setUserSettings(UserSettings userSettings) {
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 == null) {
                userSettings.getClass();
                this.userSettings_ = userSettings;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(userSettings);
            }
            return this;
        }

        public Builder setUserSettings(UserSettings.Builder builder) {
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.userSettings_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeUserSettings(UserSettings userSettings) {
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserSettings userSettings2 = this.userSettings_;
                if (userSettings2 != null) {
                    this.userSettings_ = UserSettings.newBuilder(userSettings2).mergeFrom(userSettings).buildPartial();
                } else {
                    this.userSettings_ = userSettings;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(userSettings);
            }
            return this;
        }

        public Builder clearUserSettings() {
            if (this.userSettingsBuilder_ == null) {
                this.userSettings_ = null;
                onChanged();
            } else {
                this.userSettings_ = null;
                this.userSettingsBuilder_ = null;
            }
            return this;
        }

        public UserSettings.Builder getUserSettingsBuilder() {
            onChanged();
            return getUserSettingsFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public UserSettingsOrBuilder getUserSettingsOrBuilder() {
            SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> singleFieldBuilderV3 = this.userSettingsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            UserSettings userSettings = this.userSettings_;
            return userSettings == null ? UserSettings.getDefaultInstance() : userSettings;
        }

        private SingleFieldBuilderV3<UserSettings, UserSettings.Builder, UserSettingsOrBuilder> getUserSettingsFieldBuilder() {
            if (this.userSettingsBuilder_ == null) {
                this.userSettingsBuilder_ = new SingleFieldBuilderV3<>(getUserSettings(), getParentForChildren(), isClean());
                this.userSettings_ = null;
            }
            return this.userSettingsBuilder_;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setId(String str) {
            str.getClass();
            this.id_ = str;
            onChanged();
            return this;
        }

        public Builder clearId() {
            this.id_ = User.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public Builder setIdBytes(ByteString byteString) {
            byteString.getClass();
            User.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public String getIabConsentData() {
            Object obj = this.iabConsentData_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.iabConsentData_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.UserOrBuilder
        public ByteString getIabConsentDataBytes() {
            Object obj = this.iabConsentData_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.iabConsentData_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setIabConsentData(String str) {
            str.getClass();
            this.iabConsentData_ = str;
            onChanged();
            return this;
        }

        public Builder clearIabConsentData() {
            this.iabConsentData_ = User.getDefaultInstance().getIabConsentData();
            onChanged();
            return this;
        }

        public Builder setIabConsentDataBytes(ByteString byteString) {
            byteString.getClass();
            User.checkByteStringIsUtf8(byteString);
            this.iabConsentData_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static User getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<User> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<User> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public User getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
