# -------- Stage 1: Build Stage --------
FROM node:18-alpine AS builder
WORKDIR /app

# Copy only package files first (for caching)
COPY package*.json ./

# Install all dependencies (including dev dependencies)
RUN npm install

# Copy the rest of the project
COPY . .

# Build the app (for Next.js → npm run build)
RUN npm run build


# -------- Stage 2: Production Stage --------
FROM node:18-alpine AS runner
WORKDIR /app

# Set NODE_ENV for smaller footprint
ENV NODE_ENV=production

# Copy only required files from builder stage
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public

# Install only production dependencies
RUN npm install --omit=dev

# Expose the app port
EXPOSE 3000

# Command to run app
CMD ["npm", "start"]
