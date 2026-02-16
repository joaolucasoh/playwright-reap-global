# Reap - Technical Guide for Playwright Tests

This project uses `@playwright/test` for automated API and UI testing.

## Prerequisites

- Node.js 18+ (recommended)
- npm 9+ (or a compatible version for your Node.js version)

## Installation

1. Install dependencies:

```bash
npm install
```

2. Install Playwright browsers:

```bash
npx playwright install
```

3. Configure environment variables:

```bash
cp .env.example .env
```

## Test Structure

- `tests/api/*.spec.ts`: API tests (DemoQA)
- `tests/ui/*.spec.ts`: UI tests (Ramp)
- `playwright.config.ts`: global Playwright configuration

## Running the Tests

### Run the full test suite

```bash
npm test
```

### Run API tests only

```bash
npx playwright test tests/api
```

### Run UI tests only

```bash
npx playwright test tests/ui
```

### Run a specific test file

```bash
npx playwright test tests/api/bookstore.spec.ts
npx playwright test tests/ui/ramp-signup.spec.ts
```

### Run in headed mode (browser visible)

```bash
npm run test:headed
```

### Run by test name

```bash
npx playwright test -g "Books schema and performance"
```

## Reports and Artifacts

After test execution, the project generates:

- `playwright-report/`: HTML report
- `test-results/`: videos, screenshots, and traces

To open the report:

```bash
npm run test:report
```

## Important Notes

- UI tests rely on data defined in `tests/ui/index.ts` (including credentials).
- API tests create dynamic users in the DemoQA environment.
- In CI, the config reduces parallelism and enables retries automatically (`playwright.config.ts`).
